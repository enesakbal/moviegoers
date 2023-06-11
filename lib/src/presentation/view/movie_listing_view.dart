import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/router/app_router.dart';
import '../../core/components/appbar/custom_app_bar.dart';
import '../../core/components/card/movie_card.dart';
import '../../core/components/indicator/base_indicator.dart';
import '../../core/constants/enum/movie_enum.dart';
import '../bloc/movie_listings/movie_listings_bloc.dart';

@RoutePage()
class MovieListingView extends HookWidget {
  final MovieListTypes type;
  final String? movieID;

  const MovieListingView(this.type, {super.key, this.movieID});

  @override
  Widget build(BuildContext context) {
    final controller = useScrollController();

    Future<void> scrollListener() async {
      if (controller.position.maxScrollExtent - controller.offset == 0) {
        context.read<MovieListingsBloc>().add(FetchMovies(type, movieID: movieID));
      }
    }

    useEffect(() {
      if (context.read<MovieListingsBloc>().movieList.isNotEmpty) {
        context.read<MovieListingsBloc>().resetData();
      }
      context.read<MovieListingsBloc>().add(FetchMovies(type, movieID: movieID));
      controller.addListener(scrollListener);
      return () {
        controller.removeListener(scrollListener);
        // context.read<MovieListingsBloc>().resetData();
      };
    }, []);

    return Scaffold(
      appBar: BaseAppBar(
        title: '${type.name()} Movies',
        titleStyle: Theme.of(context).appBarTheme.titleTextStyle!.copyWith(fontSize: 22.sp),
      ),
      body: BlocBuilder<MovieListingsBloc, MovieListingsState>(
        builder: (context, state) {
          if (state is MovieListingsLoading || state is MovieListingsInitial || state is MovieListingsError) {
            return const Center(child: BaseIndicator());
          }
          return ListView(
            controller: controller,
            children: [
              25.verticalSpace,
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                itemCount: context.read<MovieListingsBloc>().movieList.length,
                itemBuilder: (context, index) {
                  return MovieCard(
                    movie: context.read<MovieListingsBloc>().movieList[index],
                    onTap: () async => router.push(
                      MovieBlocProviderRoute(
                          movieID: context.read<MovieListingsBloc>().movieList[index].id?.toString() ?? ''),
                    ),
                  );
                },
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  childAspectRatio: 9 / 16,
                  mainAxisSpacing: 30,
                ),
              ),
              if (context.read<MovieListingsBloc>().loadMore) ...[
                30.verticalSpace,
                const BaseIndicator(),
                30.verticalSpace,
              ]
            ],
          );
        },
      ),
    );
  }
}
