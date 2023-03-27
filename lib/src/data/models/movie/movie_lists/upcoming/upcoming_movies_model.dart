import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../../domain/entities/movie/movie_list/upcoming_movies.dart';
import '../../movie/movie_model.dart';
import '../dates_model.dart';

part 'upcoming_movies_model.g.dart';

@JsonSerializable()
class UpcomingMoviesModel extends Equatable {
  final int? page;
  final DatesModel? dates;
  @JsonKey(name: 'results')
  final List<MovieModel>? movies;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @JsonKey(name: 'total_results')
  final int? totalResults;

  const UpcomingMoviesModel({
    this.page,
    this.movies,
    this.totalPages,
    this.totalResults,
    this.dates,
  });

  factory UpcomingMoviesModel.fromJson(Map<String, dynamic> json) {
    return _$UpcomingMoviesModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UpcomingMoviesModelToJson(this);

  UpcomingMovies toEntity() => UpcomingMovies(
        dates: dates!.toEntity(),
        movies: movies!.map((e) => e.toEntity()).toList(),
        page: page,
        totalPages: totalPages,
        totalResults: totalPages,
      );

  @override
  List<Object?> get props => [page, movies, totalPages, totalResults, dates];
}
