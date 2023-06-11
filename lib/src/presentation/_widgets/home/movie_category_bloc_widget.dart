import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/router/app_router.dart';
import '../../../core/components/card/movie_card.dart';
import '../../../core/components/indicator/base_indicator.dart';
import '../../../core/constants/enum/movie_enum.dart';
import '../../../core/init/language/locale_keys.g.dart';
import '../../bloc/movies/base_movie_bloc/base_movies_bloc.dart';
import '../../bloc/movies/base_movie_blocs.dart';

class MovieCategoryBlocWidget<T extends BaseMoviesBloc> extends HookWidget {
  const MovieCategoryBlocWidget({super.key}) : assert(T is! BaseMoviesBloc, 'MUST BE EXTENDS BASEMOVIESBLOC');

  @override
  Widget build(BuildContext context) {
    final title = useState('error');
    final type = useState<MovieListTypes>(MovieListTypes.POPULAR);

    useEffect(() {
      title.value = 'ERROR';

      switch (T) {
        case NowPlayingMoviesBloc:
          title.value = LocaleKeys.home_now_playing.tr();
          type.value = MovieListTypes.NOWPLAYING;
          break;
        case UpcomingMoviesBloc:
          title.value = LocaleKeys.home_upcoming.tr();
          type.value = MovieListTypes.UPCOMING;
          break;
        case TopRatedMoviesBloc:
          title.value = LocaleKeys.home_top_rated.tr();
          type.value = MovieListTypes.TOPRATED;
          break;
        default:
      }

      context.read<T>().add(const FetchBaseMovies(page: 1));

      return () {};
    }, []);

    return BlocBuilder<T, BaseMoviesState>(
      builder: (context, state) {
        if (state is BaseMoviesError) {
          return SliverToBoxAdapter(child: SizedBox(height: 325.h, child: Center(child: Text(state.message))));
        } else if (state is BaseMoviesEmpty) {
          return SliverToBoxAdapter(child: Container());
        } else if (state is BaseMoviesHasData) {
          return _hasDataBody(title, context, state, type.value);
        } else {
          return SliverToBoxAdapter(
            child: SizedBox(height: 325.h, child: const Center(child: BaseIndicator())),
          );
        }
      },
    );
  }

  Widget _hasDataBody(ValueNotifier<String> title, BuildContext context, BaseMoviesHasData state, MovieListTypes type) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          30.verticalSpace,
          _title(title, context, type),
          20.verticalSpace,
          _movies(state),
          25.verticalSpace,
        ],
      ),
    );
  }

  Padding _title(ValueNotifier<String> title, BuildContext context, MovieListTypes type) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 15.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title.value,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          GestureDetector(
            onTap: () async => router.push(MovieListingRoute(type: type)),
            child: Text(
              LocaleKeys.home_view_all.tr(),
              style: Theme.of(context).textTheme.titleSmall,
            ),
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
        onTap: () async => router.push(
          MovieBlocProviderRoute(movieID: state.movieList[index].id?.toString() ?? ''),
        ),
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
