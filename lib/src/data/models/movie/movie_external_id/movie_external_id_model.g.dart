// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_external_id_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieExternalIdModel _$MovieExternalIdModelFromJson(
        Map<String, dynamic> json) =>
    MovieExternalIdModel(
      id: json['id'] as int?,
      imdbId: json['imdb_id'] as String?,
      wikidataId: json['wikidata_id'] as String?,
      facebookId: json['facebook_id'] as String?,
      instagramId: json['instagram_id'] as String?,
      twitterId: json['twitter_id'] as String?,
    );

Map<String, dynamic> _$MovieExternalIdModelToJson(
        MovieExternalIdModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imdb_id': instance.imdbId,
      'wikidata_id': instance.wikidataId,
      'facebook_id': instance.facebookId,
      'instagram_id': instance.instagramId,
      'twitter_id': instance.twitterId,
    };
