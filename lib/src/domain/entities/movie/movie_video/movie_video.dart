import 'package:equatable/equatable.dart';

import 'movie_video_detail.dart';

class MovieVideo extends Equatable {
  final int? id;
  final List<MovieVideoDetail>? movieVideDetails;

  const MovieVideo({this.id, this.movieVideDetails});

  @override
  List<Object?> get props => [id, movieVideDetails];
}
