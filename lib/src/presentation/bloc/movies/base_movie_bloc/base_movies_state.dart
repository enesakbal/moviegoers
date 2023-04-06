part of 'base_movies_bloc.dart';

abstract class BaseMoviesState extends Equatable {
  const BaseMoviesState();

  @override
  List<Object?> get props => [];
}

class BaseMoviesInitial extends BaseMoviesState {
  const BaseMoviesInitial();
  @override
  List<Object> get props => [];
}

class BaseMoviesError extends BaseMoviesState {
  const BaseMoviesError({required this.message});

  final String message;
  @override
  List<Object> get props => [message];
}

class BaseMoviesLoading extends BaseMoviesState {
  const BaseMoviesLoading();
}

class BaseMoviesHasData extends BaseMoviesState {
  const BaseMoviesHasData(this.movieList);

  final List<Movie> movieList;

  @override
  List<Object> get props => [movieList];
}
