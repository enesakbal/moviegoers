import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../core/constants/enum/movie_enum.dart';
import '../_widgets/home/home_carousel_bloc_widget.dart';
import '../_widgets/home/upcoming_carousel_bloc_widget.dart';
import '../bloc/movies/base_movie_bloc/base_movies_bloc.dart';
import '../bloc/movies/blocs.dart';

@RoutePage()
class HomeView extends HookWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context.read<PopularMoviesBloc>().add(const FetchMovies(MovieTypes.POPULAR, page: 1));
      context.read<UpcomingMoviesBloc>().add(const FetchMovies(MovieTypes.UPCOMING, page: 1));

      return null;
    }, []);

    return const Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          PopularCarouselBlocWidget(),
          UpcomingCarouselBlocWidget(),
        ],
      )),
    );
  }
}
