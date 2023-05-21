import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../../domain/entities/movie/movie_list/top_rated_movies.dart';
import '../../movie/movie_model.dart';

part 'top_rated_movies_model.g.dart';

@JsonSerializable()
class TopRatedMoviesModel extends Equatable {
  final int? page;
  @JsonKey(name: 'results')
  final List<MovieModel>? movies;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @JsonKey(name: 'total_results')
  final int? totalResults;

  const TopRatedMoviesModel({
    this.page,
    this.movies,
    this.totalPages,
    this.totalResults,
  });

  factory TopRatedMoviesModel.fromJson(Map<String, dynamic> json) {
    return _$TopRatedMoviesModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TopRatedMoviesModelToJson(this);

  TopRatedMovies toEntity() => TopRatedMovies(
        movies: movies!.map((e) => e.toEntity()).toList(),
        page: page,
        totalPages: totalPages,
        totalResults: totalPages,
      );
  @override
  List<Object?> get props => [page, movies, totalPages, totalResults];
}
