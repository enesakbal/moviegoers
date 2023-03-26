import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../domain/entities/movie/movie_video/movie_video_detail.dart';

part 'movie_video_detail_model.g.dart';

@JsonSerializable()
class MovieVideoDetailModel extends Equatable {
  @JsonKey(name: 'iso_639_1')
  final String? iso6391;
  @JsonKey(name: 'iso_3166_1')
  final String? iso31661;
  final String? name;
  final String? key;
  final String? site;
  final int? size;
  final String? type;
  final bool? official;
  @JsonKey(name: 'published_at')
  final DateTime? publishedAt;
  @JsonKey(name: 'id')
  final String? id;

  const MovieVideoDetailModel({
    this.iso6391,
    this.iso31661,
    this.name,
    this.key,
    this.site,
    this.size,
    this.type,
    this.official,
    this.publishedAt,
    this.id,
  });

  factory MovieVideoDetailModel.fromJson(Map<String, dynamic> json) {
    return _$MovieVideoDetailModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MovieVideoDetailModelToJson(this);

  MovieVideoDetail toEntity() => MovieVideoDetail(
        id: id,
        iso31661: iso31661,
        iso6391: iso6391,
        key: key,
        name: name,
        official: official,
        publishedAt: publishedAt,
        site: site,
        size: size,
        type: type,
      );

  @override
  List<Object?> get props {
    return [
      iso6391,
      iso31661,
      name,
      key,
      site,
      size,
      type,
      official,
      publishedAt,
      id,
    ];
  }
}
