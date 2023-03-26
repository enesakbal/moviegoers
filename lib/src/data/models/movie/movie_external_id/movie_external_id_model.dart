import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../domain/entities/movie/movie_external_id/movie_external_id.dart';

part 'movie_external_id_model.g.dart';

@JsonSerializable()
class MovieExternalIdModel extends Equatable {
  final int? id;
  @JsonKey(name: 'imdb_id')
  final String? imdbId;
  @JsonKey(name: 'wikidata_id')
  final String? wikidataId;
  @JsonKey(name: 'facebook_id')
  final String? facebookId;
  @JsonKey(name: 'instagram_id')
  final String? instagramId;
  @JsonKey(name: 'twitter_id')
  final String? twitterId;

  const MovieExternalIdModel({
    this.id,
    this.imdbId,
    this.wikidataId,
    this.facebookId,
    this.instagramId,
    this.twitterId,
  });

  factory MovieExternalIdModel.fromJson(Map<String, dynamic> json) {
    return _$MovieExternalIdModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MovieExternalIdModelToJson(this);

  MovieExternalId toEntity() => MovieExternalId(
        facebookId: facebookId,
        id: id,
        imdbId: imdbId,
        instagramId: instagramId,
        twitterId: twitterId,
      );
  @override
  List<Object?> get props {
    return [
      id,
      imdbId,
      wikidataId,
      facebookId,
      instagramId,
      twitterId,
    ];
  }
}
