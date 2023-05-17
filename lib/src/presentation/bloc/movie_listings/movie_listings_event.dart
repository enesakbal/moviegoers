part of 'movie_listings_bloc.dart';

abstract class MovieListingsEvent extends Equatable {
  const MovieListingsEvent();

  @override
  List<Object> get props => [];
}

class FetchMovies extends MovieListingsEvent {
  final MovieListTypes type;

  const FetchMovies(this.type);
}
