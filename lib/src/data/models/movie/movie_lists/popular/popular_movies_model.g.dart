// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_movies_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PopularMoviesModel _$PopularMoviesModelFromJson(Map<String, dynamic> json) =>
    PopularMoviesModel(
      page: json['page'] as int?,
      movies: (json['results'] as List<dynamic>?)
          ?.map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int?,
      totalResults: json['total_results'] as int?,
    );

Map<String, dynamic> _$PopularMoviesModelToJson(PopularMoviesModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.movies,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
