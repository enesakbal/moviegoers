import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../_widgets/home/home_carousel_bloc_widget.dart';
import '../_widgets/home/movie_category_bloc_widget.dart';
import '../bloc/movies/blocs.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          //* POPULAR CAROUSEL
          PopularCarouselBlocWidget(),

          //* NOW PLAYING
          MovieCategoryBlocWidget<NowPlayingMoviesBloc>(),

          //* UPCOMING
          MovieCategoryBlocWidget<UpcomingMoviesBloc>(),

          //* POPULAR
          MovieCategoryBlocWidget<PopularMoviesBloc>(),
        ],
      ),
    );
  }
}
