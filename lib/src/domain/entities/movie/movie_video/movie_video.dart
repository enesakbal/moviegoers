import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'movie_video_detail.dart';

class MovieVideo extends Equatable {
  final int? id;
  final List<MovieVideoDetail>? movieVideDetails;

  const MovieVideo({this.id, this.movieVideDetails});

  factory MovieVideo.fromMap(Map<String, dynamic> data) {
    return MovieVideo(
      id: data['id'] as int?,
      movieVideDetails: (data['movie_video_details'] as List<dynamic>?)
          ?.map((e) => MovieVideoDetail.fromMap(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() => {
        'id': id,
        'movie_video_details': movieVideDetails?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [MovieVideo].
  factory MovieVideo.fromJson(String data) {
    return MovieVideo.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [MovieVideo] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props => [id, movieVideDetails];
}
