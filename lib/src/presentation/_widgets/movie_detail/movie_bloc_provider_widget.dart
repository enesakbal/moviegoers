import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injector.dart' as di;
import '../../bloc/blocs.dart';
import '../../view/movie_detail_view.dart';

@RoutePage()
class MovieBlocProviderWidget extends StatelessWidget {
  const MovieBlocProviderWidget({super.key, required this.movieID});

  final String movieID;

  @override
  Widget build(BuildContext context) {
    final movieDetailBloc = di.injector<MovieDetailBloc>();
    final recommendationMoviesBloc = di.injector<RecommendationMoviesBloc>();
    final similiarMoviesBloc = di.injector<SimiliarMoviesBloc>();
    final movieCreditBloc = di.injector<MovieCreditBloc>();
    final movieProviderBloc = di.injector<MovieProviderBloc>();
    final movieVideoBloc = di.injector<MovieVideoBloc>();
    final movieKeywordsBloc = di.injector<MovieKeywordsBloc>();

    final key = UniqueKey();

    return MultiBlocProvider(
      providers: [
        BlocProvider<MovieDetailBloc>(create: (_) => movieDetailBloc),
        BlocProvider<RecommendationMoviesBloc>(create: (_) => recommendationMoviesBloc),
        BlocProvider<SimiliarMoviesBloc>(create: (_) => similiarMoviesBloc),
        BlocProvider<MovieCreditBloc>(create: (_) => movieCreditBloc),
        BlocProvider<MovieProviderBloc>(create: (_) => movieProviderBloc),
        BlocProvider<MovieVideoBloc>(create: (_) => movieVideoBloc),
        BlocProvider<MovieKeywordsBloc>(create: (_) => movieKeywordsBloc),
      ],
      child: MovieDetailView(
        movieID: movieID,
        movieDetailBloc: movieDetailBloc,
        recommendationMoviesBloc: recommendationMoviesBloc,
        similiarMoviesBloc: similiarMoviesBloc,
        movieCreditBloc: movieCreditBloc,
        movieProviderBloc: movieProviderBloc,
        movieVideoBloc: movieVideoBloc,
        movieKeywordsBloc: movieKeywordsBloc,
        key: key,
      ),
    );
  }
}
