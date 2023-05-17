part of 'movie_listings_bloc.dart';

abstract class MovieListingsState extends Equatable {
  const MovieListingsState();

  @override
  List<Object> get props => [];
}

class MovieListingsInitial extends MovieListingsState {
  const MovieListingsInitial();
  @override
  List<Object> get props => [];
}

class MovieListingsError extends MovieListingsState {
  const MovieListingsError({required this.message});

  final String message;
  @override
  List<Object> get props => [message];
}

class MovieListingsLoading extends MovieListingsState {
  const MovieListingsLoading();
}

class MovieListingsEmpty extends MovieListingsState {
  const MovieListingsEmpty({required this.message});

  final String message;
  @override
  List<Object> get props => [message];
}

class MovieListingsHasData extends MovieListingsState {
  const MovieListingsHasData(this.movieList);

  final List<Movie> movieList;

  @override
  List<Object> get props => [movieList];

  @override
  String toString() => 'MovieListingsHasData()';
}
