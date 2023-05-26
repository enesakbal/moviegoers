// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'now_playing_movies_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NowPlayingMoviesModel _$NowPlayingMoviesModelFromJson(
        Map<String, dynamic> json) =>
    NowPlayingMoviesModel(
      movies: (json['results'] as List<dynamic>?)
          ?.map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: json['page'] as int?,
      totalPages: json['total_pages'] as int?,
      totalResults: json['total_results'] as int?,
      dates: json['dates'] == null
          ? null
          : DatesModel.fromJson(json['dates'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NowPlayingMoviesModelToJson(
        NowPlayingMoviesModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'dates': instance.dates,
      'results': instance.movies,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
