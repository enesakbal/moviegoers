import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../../domain/entities/movie/movie_list/now_playing_movies.dart';
import '../../movie/movie_model.dart';
import '../dates_model.dart';

part 'now_playing_movies_model.g.dart';

@JsonSerializable()
class NowPlayingMoviesModel extends Equatable {
  final int? page;
  final DatesModel? dates;
  final List<MovieModel>? movies;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @JsonKey(name: 'total_results')
  final int? totalResults;

  const NowPlayingMoviesModel({
    this.page,
    this.movies,
    this.totalPages,
    this.totalResults,
    this.dates,
  });

  factory NowPlayingMoviesModel.fromJson(Map<String, dynamic> json) {
    return _$NowPlayingMoviesModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NowPlayingMoviesModelToJson(this);

  NowPlayingMovies toEntity() => NowPlayingMovies(
        dates: dates!.toEntity(),
        movies: movies!.map((e) => e.toEntity()).toList(),
        page: page,
        totalPages: totalPages,
        totalResults: totalPages,
      );

  @override
  List<Object?> get props => [page, movies, totalPages, totalResults, dates];
}
