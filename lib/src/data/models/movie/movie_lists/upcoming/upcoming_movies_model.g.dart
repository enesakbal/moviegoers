// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcoming_movies_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpcomingMoviesModel _$UpcomingMoviesModelFromJson(Map<String, dynamic> json) =>
    UpcomingMoviesModel(
      page: json['page'] as int?,
      movies: (json['results'] as List<dynamic>?)
          ?.map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int?,
      totalResults: json['total_results'] as int?,
      dates: json['dates'] == null
          ? null
          : DatesModel.fromJson(json['dates'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpcomingMoviesModelToJson(
        UpcomingMoviesModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'dates': instance.dates,
      'results': instance.movies,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
