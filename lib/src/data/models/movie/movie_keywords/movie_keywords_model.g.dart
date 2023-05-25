// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_keywords_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieKeywordsModel _$MovieKeywordsModelFromJson(Map<String, dynamic> json) =>
    MovieKeywordsModel(
      id: json['id'] as int?,
      keywords: (json['keywords'] as List<dynamic>?)
          ?.map((e) => KeywordModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MovieKeywordsModelToJson(MovieKeywordsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'keywords': instance.keywords,
    };
