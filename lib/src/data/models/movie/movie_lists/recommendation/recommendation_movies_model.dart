import 'package:json_annotation/json_annotation.dart';

import '../../movie/movie_model.dart';
import '../base/base_movie_listings_model.dart';

part 'recommendation_movies_model.g.dart';

@JsonSerializable()
class RecommendationMoviesModel extends BaseMovieListingsModel {
  const RecommendationMoviesModel({
    super.page,
    super.movies,
    super.totalPages,
    super.totalResults,
  });

  factory RecommendationMoviesModel.fromJson(Map<String, dynamic> json) {
    return _$RecommendationMoviesModelFromJson(json);
  }

  @override
  List<Object?> get props => [page, movies, totalPages, totalResults];
}
