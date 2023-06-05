import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/gen/colors.gen.dart';
import '../../config/router/app_router.dart';
import '../../core/components/appbar/custom_app_bar.dart';
import '../../core/components/card/movie_card.dart';
import '../../core/components/indicator/base_indicator.dart';
import '../bloc/search/search_bloc.dart';

@RoutePage()
class SearchView extends HookWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    final searchBarController = useTextEditingController();
    final tabController = useTabController(initialLength: 2);
    final scrollController = useScrollController();

    Future<void> scrollListener() async {
      if (scrollController.position.maxScrollExtent - scrollController.offset == 0) {
        context.read<SearchBloc>().add(
            FetchSearchMovies(searchBarController.text.isEmpty ? 'a' : searchBarController.text, resetData: false));
      }
    }

    useEffect(() {
      scrollController.addListener(scrollListener);
      context.read<SearchBloc>().add(const FetchSearchMovies('a', resetData: true));

      return () {};
    }, []);

    return Scaffold(
      appBar: BaseAppBar(
        hasSearch: true,
        searchBarController: searchBarController,
        onChanged: (query) {
          context.read<SearchBloc>().add(FetchSearchMovies(query, resetData: true));
        },
      ),
      body: Column(
        children: [
          TabBar(
            padding: EdgeInsets.zero,
            controller: tabController,
            labelColor: Colors.white,
            unselectedLabelColor: MGColors.grey,
            indicatorColor: MGColors.blue.withOpacity(0.3),
            labelStyle: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
            tabs: const [
              Tab(
                text: 'Movies',
              ),
              Tab(
                text: 'Person',
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                BlocBuilder<SearchBloc, SearchState>(
                  builder: (context, state) {
                    if (state is SearchError) {
                      return Center(child: Text(state.message));
                    } else if (state is SearchLoading) {
                      return const Center(child: BaseIndicator());
                    } else if (state is SearchEmpty) {
                      return const Center(child: Text('There is no data'));
                    } else {
                      return ListView(
                        controller: scrollController,
                        children: [
                          25.verticalSpace,
                          GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            padding: EdgeInsets.symmetric(horizontal: 5.w),
                            itemCount: context.watch<SearchBloc>().movieList.length,
                            itemBuilder: (context, index) {
                              return MovieCard(
                                movie: context.watch<SearchBloc>().movieList[index],
                                onTap: () async => router.push(MovieBlocProviderRoute(
                                    movieID: context.watch<SearchBloc>().movieList[index].id!.toString())),
                              );
                            },
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 20,
                              childAspectRatio: 9 / 16,
                              mainAxisSpacing: 30,
                            ),
                          ),
                          if (context.watch<SearchBloc>().loadMore) ...[
                            30.verticalSpace,
                            const BaseIndicator(),
                            30.verticalSpace,
                          ]
                        ],
                      );
                    }
                    return const Center(child: BaseIndicator());
                  },
                ),
                Center(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Coming Soon..',
                        textStyle: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        speed: const Duration(milliseconds: 100),
                        cursor: '',
                      ),
                    ],
                    repeatForever: true,
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                    onTap: () async => router.push(const SearchRoute()),
                  ),
                ),
                // BlocBuilder<SearchBloc, SearchState>(
                //   builder: (context, state) {
                //     if (state is SearchError) {
                //       return Center(child: Text(state.message));
                //     } else if (state is SearchLoading) {
                //       return const Center(child: BaseIndicator());
                //     } else if (state is SearchEmpty) {
                //       return const Center(child: Text('There is no data'));
                //     } else if (state is SearchHasDataMovie) {
                //       return GridView.builder(
                //         shrinkWrap: true,
                //         padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
                //         itemCount: state.movieList.length,
                //         itemBuilder: (context, index) => MovieCard(
                //           movie: state.movieList[index],
                //           onTap: () async =>
                //               router.push(MovieBlocProviderRoute(movieID: state.movieList[index].id!.toString())),
                //         ),
                //         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //           crossAxisCount: 2,
                //           crossAxisSpacing: 20,
                //           childAspectRatio: 9 / 16,
                //           mainAxisSpacing: 30,
                //         ),
                //       );
                //     }
                //     return const Center(child: BaseIndicator());
                //   },
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
