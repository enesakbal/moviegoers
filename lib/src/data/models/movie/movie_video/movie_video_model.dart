import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../domain/entities/movie/movie_video/movie_video.dart';
import 'movie_video_detail_model.dart';

part 'movie_video_model.g.dart';

@JsonSerializable()
class MovieVideoModel extends Equatable {
  final int? id;
  @JsonKey(name: 'results')
  final List<MovieVideoDetailModel>? movieVideoDetailList;

  const MovieVideoModel({this.id, this.movieVideoDetailList});

  factory MovieVideoModel.fromJson(Map<String, dynamic> json) {
    return _$MovieVideoModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MovieVideoModelToJson(this);

  MovieVideo toEntity() => MovieVideo(
      id: id,
      movieVideDetails:
          movieVideoDetailList!.map((e) => e.toEntity()).toList());

  @override
  List<Object?> get props => [id, movieVideoDetailList];
}
