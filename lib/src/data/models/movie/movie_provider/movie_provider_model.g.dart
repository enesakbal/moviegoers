// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_provider_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieProviderModel _$MovieProviderModelFromJson(Map<String, dynamic> json) =>
    MovieProviderModel(
      id: json['id'] as int?,
      results: json['results'] == null
          ? null
          : ResultsModel.fromJson(json['results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MovieProviderModelToJson(MovieProviderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'results': instance.results,
    };
