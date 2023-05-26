import 'package:json_annotation/json_annotation.dart';

import '../../movie/movie_model.dart';
import '../base/base_movie_listings_model.dart';

part 'similiar_movies_model.g.dart';

@JsonSerializable()
class SimiliarMoviesModel extends BaseMovieListingsModel {
  const SimiliarMoviesModel({
    super.page,
    super.movies,
    super.totalPages,
    super.totalResults,
  });

  factory SimiliarMoviesModel.fromJson(Map<String, dynamic> json) {
    return _$SimiliarMoviesModelFromJson(json);
  }

  @override
  List<Object?> get props => [page, movies, totalPages, totalResults];
}
