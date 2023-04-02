part of 'popular_movies_bloc.dart';

abstract class PopularMoviesState extends Equatable {
  const PopularMoviesState();

  @override
  List<Object> get props => [];
}

class PopularMoviesInitial extends PopularMoviesState {
  const PopularMoviesInitial();
}

class PopularMoviesError extends PopularMoviesState {
  const PopularMoviesError({required this.message});

  final String message;
  @override
  List<Object> get props => [message];
}

class PopularMoviesLoading extends PopularMoviesState {
  const PopularMoviesLoading();
}

class PopularMoviesHasData extends PopularMoviesState {
  const PopularMoviesHasData(this.movieList);

  final List<Movie> movieList;

  @override
  List<Object> get props => [movieList];
}
