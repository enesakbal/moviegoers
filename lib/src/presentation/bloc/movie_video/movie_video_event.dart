part of 'movie_video_bloc.dart';

abstract class MovieVideoEvent extends Equatable {
  const MovieVideoEvent();

  @override
  List<Object> get props => [];
}
class FetchMovieVideos extends MovieVideoEvent {
  final String movieID;

  const FetchMovieVideos(this.movieID);

  @override
  List<Object> get props => [movieID];
}
