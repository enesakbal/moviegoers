import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../../domain/entities/movie/movie_list/popular_movies.dart';
import '../../movie/movie_model.dart';

part 'popular_movies_model.g.dart';

@JsonSerializable()
class PopularMoviesModel extends Equatable {
  final int? page;
  final List<MovieModel>? movies;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @JsonKey(name: 'total_results')
  final int? totalResults;

  const PopularMoviesModel({
    this.page,
    this.movies,
    this.totalPages,
    this.totalResults,
  });

  factory PopularMoviesModel.fromJson(Map<String, dynamic> json) {
    return _$PopularMoviesModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PopularMoviesModelToJson(this);

  PopularMovies toEntity() => PopularMovies(
        movies: movies!.map((e) => e.toEntity()).toList(),
        page: page,
        totalPages: totalPages,
        totalResults: totalPages,
      );

  @override
  List<Object?> get props => [page, movies, totalPages, totalResults];
}
