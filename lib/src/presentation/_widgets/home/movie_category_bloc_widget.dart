import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/router/app_router.dart';
import '../../../core/components/card/movie_card.dart';
import '../../../core/components/indicator/base_indicator.dart';
import '../../../core/init/language/locale_keys.g.dart';
import '../../bloc/movies/base_movie_bloc/base_movies_bloc.dart';
import '../../bloc/movies/blocs.dart';

class MovieCategoryBlocWidget<T extends BaseMoviesBloc> extends HookWidget {
  const MovieCategoryBlocWidget({super.key}) : assert(T is! BaseMoviesBloc, 'MUST BE EXTENDS BASEMOVIESBLOC');

  @override
  Widget build(BuildContext context) {
    final title = useState('error');

    useEffect(() {
      String newTitle = 'error';

      switch (T) {
        case NowPlayingMoviesBloc:
          newTitle = LocaleKeys.home_now_playing.tr();
          break;
        case UpcomingMoviesBloc:
          newTitle = LocaleKeys.home_upcoming.tr();
          break;
        default:
      }

      title.value = newTitle;
      context.read<T>().add(const FetchMovies(page: 1));

      return () {
        title.value = newTitle;
      };
    }, [title]);

    return BlocBuilder<T, BaseMoviesState>(
      builder: (context, state) {
        if (state is BaseMoviesError) {
          return SliverToBoxAdapter(child: SizedBox(height: 325.h, child: Center(child: Text(state.message))));
        } else if (state is BaseMoviesHasData) {
          return _hasDataBody(title, context, state);
        } else if (state is BaseMoviesEmpty) {
          return SliverToBoxAdapter(child: SizedBox(height: 325.h, child: Center(child: Text(state.message))));
        } else {
          return SliverToBoxAdapter(
            child: SizedBox(height: 325.h, child: const Center(child: BaseIndicator())),
          );
        }
      },
    );
  }

  Widget _hasDataBody(ValueNotifier<String> title, BuildContext context, BaseMoviesHasData state) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          25.verticalSpace,
          _title(title, context),
          20.verticalSpace,
          _movies(state),
          25.verticalSpace,
        ],
      ),
    );
  }

  Padding _title(ValueNotifier<String> title, BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 15.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title.value,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            LocaleKeys.home_view_all.tr(),
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
    );
  }

  GridView _movies(BaseMoviesHasData state) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      itemCount: state.movieList.length,
      itemBuilder: (context, index) => MovieCard(
        movie: state.movieList[index],
        onTap: () async => router.push(MovieBlocProviderRoute(movieID: state.movieList[index].id!.toString())),
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        childAspectRatio: 9 / 16,
        mainAxisSpacing: 30,
      ),
    );
  }
}
