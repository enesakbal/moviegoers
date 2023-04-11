import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/gen/assets.gen.dart';
import '../../../core/components/card/movie_card.dart';
import '../../../core/init/language/locale_keys.g.dart';
import '../../bloc/movies/base_movie_bloc/base_movies_bloc.dart';
import '../../bloc/movies/blocs.dart';

class PopularCarouselBlocWidget extends StatelessWidget {
  const PopularCarouselBlocWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PopularMoviesBloc, BaseMoviesState>(
      builder: (context, state) {
        return SliverToBoxAdapter(
          child: Column(
            children: [
              if (state is BaseMoviesError) ...[
                Center(
                    child: Text(
                  state.message,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: Assets.fonts.apercuProBold,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ))
              ] else ...[
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 12.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(LocaleKeys.home_popular.tr(), style: Theme.of(context).textTheme.titleMedium),
                          Text(LocaleKeys.home_view_all.tr(), style: Theme.of(context).textTheme.titleSmall),
                        ],
                      ),
                    ),
                    // const PopularCarouselBlocWidget(),
                    if (state is BaseMoviesHasData) ...[
                      CarouselSlider.builder(
                        itemCount: state.movieList.length,
                        itemBuilder: (_, index, ___) => MovieCard(movie: state.movieList[index]),
                        options: CarouselOptions(
                          autoPlay: true,
                          height: 325.h,
                          viewportFraction: 0.6,
                          enlargeFactor: 0.4,
                          enlargeCenterPage: true,
                          enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                        ),
                      ),
                    ] else ...[
                      Center(
                        child: SizedBox(
                          height: 325.h,
                          child: const CircularProgressIndicator.adaptive(
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ),
                    ]
                  ],
                )
              ]
            ],
          ),
        );
      },
    );
  }
}
