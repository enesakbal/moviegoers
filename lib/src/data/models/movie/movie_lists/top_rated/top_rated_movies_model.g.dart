// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_rated_movies_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopRatedMoviesModel _$TopRatedMoviesModelFromJson(Map<String, dynamic> json) =>
    TopRatedMoviesModel(
      page: json['page'] as int?,
      movies: (json['results'] as List<dynamic>?)
          ?.map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int?,
      totalResults: json['total_results'] as int?,
    );

Map<String, dynamic> _$TopRatedMoviesModelToJson(
        TopRatedMoviesModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.movies,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
