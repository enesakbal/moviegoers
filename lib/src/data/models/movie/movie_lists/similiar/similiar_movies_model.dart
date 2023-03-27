import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../../domain/entities/movie/movie_list/similiar_movies.dart';
import '../../movie/movie_model.dart';

part 'similiar_movies_model.g.dart';

@JsonSerializable()
class SimiliarMoviesModel extends Equatable {
  final int? page;
  @JsonKey(name: 'results')
  final List<MovieModel>? movies;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @JsonKey(name: 'total_results')
  final int? totalResults;

  const SimiliarMoviesModel({
    this.page,
    this.movies,
    this.totalPages,
    this.totalResults,
  });

  factory SimiliarMoviesModel.fromJson(Map<String, dynamic> json) {
    return _$SimiliarMoviesModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SimiliarMoviesModelToJson(this);

  SimiliarMovies toEntity() => SimiliarMovies(
        movies: movies!.map((e) => e.toEntity()).toList(),
        page: page,
        totalPages: totalPages,
        totalResults: totalPages,
      );
  @override
  List<Object?> get props => [page, movies, totalPages, totalResults];
}
