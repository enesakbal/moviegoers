part of 'movie_listings_bloc.dart';

abstract class MovieListingsEvent extends Equatable {
  const MovieListingsEvent();

  @override
  List<Object?> get props => [];
}

class FetchMovies extends MovieListingsEvent {
  final MovieListTypes type;

  final String? movieID;

  const FetchMovies(this.type, {this.movieID = ''});

  @override
  List<Object?> get props => [type, movieID];
}
