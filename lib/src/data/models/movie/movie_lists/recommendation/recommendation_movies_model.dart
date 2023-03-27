import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../../domain/entities/movie/movie_list/recommendation_movies.dart';
import '../../movie/movie_model.dart';

part 'recommendation_movies_model.g.dart';

@JsonSerializable()
class RecommendationMoviesModel extends Equatable {
  final int? page;
  @JsonKey(name: 'results')
  final List<MovieModel>? movies;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @JsonKey(name: 'total_results')
  final int? totalResults;

  const RecommendationMoviesModel({
    this.page,
    this.movies,
    this.totalPages,
    this.totalResults,
  });

  factory RecommendationMoviesModel.fromJson(Map<String, dynamic> json) {
    return _$RecommendationMoviesModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RecommendationMoviesModelToJson(this);

  RecommendationMovies toEntity() => RecommendationMovies(
        movies: movies!.map((e) => e.toEntity()).toList(),
        page: page,
        totalPages: totalPages,
        totalResults: totalPages,
      );

  @override
  List<Object?> get props => [page, movies, totalPages, totalResults];
}
