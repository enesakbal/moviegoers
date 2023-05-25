part of 'movie_video_bloc.dart';

abstract class MovieVideoState extends Equatable {
  const MovieVideoState();

  @override
  List<Object> get props => [];
}

class MovieVideoInitial extends MovieVideoState {
  const MovieVideoInitial();
}

class MovieVideoError extends MovieVideoState {
  final String message;

  const MovieVideoError(this.message);

  @override
  List<Object> get props => [message];
}

class MovieVideoLoading extends MovieVideoState {
  const MovieVideoLoading();
}

class MovieVideoHasData extends MovieVideoState {
  final List<MovieVideoDetail?> movieVideoList;

  const MovieVideoHasData(this.movieVideoList);

  @override
  List<Object> get props => [movieVideoList];

  @override
  String toString() => 'MovieVideoHasData()';
}
