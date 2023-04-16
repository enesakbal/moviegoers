part of 'movie_detail_bloc.dart';

abstract class MovieDetailEvent extends Equatable {
  const MovieDetailEvent();

  @override
  List<Object> get props => [];
}

class FetchMovieDetail extends MovieDetailEvent {
  final String movieID;

  const FetchMovieDetail(this.movieID);

  @override
  List<Object> get props => [movieID];
}
