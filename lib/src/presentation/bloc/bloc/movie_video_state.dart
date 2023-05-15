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
  final MovieVideo movieVideo;

  const MovieVideoHasData(this.movieVideo);

  @override
  List<Object> get props => [MovieVideo];

  @override
  String toString() => 'MovieVideoHasData()';
}
