import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/components/card/movie_card.dart';
import '../../bloc/popular_movies/popular_movies_bloc.dart';

class HomeCarouselBlocWidget extends StatelessWidget {
  const HomeCarouselBlocWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PopularMoviesBloc, PopularMoviesState>(
      builder: (context, state) {
        if (state is PopularMoviesError) {
          return Center(child: Text(state.message));
        } else if (state is PopularMoviesHasData) {
          return CarouselSlider.builder(
            itemCount: 10,
            itemBuilder: (_, index, ___) => MovieCard(movie: state.movieList[index]),
            options: CarouselOptions(
              autoPlay: true,
              height: 325.h,
              viewportFraction: 0.6,
              enlargeFactor: 0.4,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.zoom,
            ),
          );
        }
        return Center(
          child: SizedBox(
            height: 325.h,
            child: const CircularProgressIndicator.adaptive(
              backgroundColor: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
