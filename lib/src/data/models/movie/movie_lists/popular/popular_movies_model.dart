import 'package:json_annotation/json_annotation.dart';

import '../../movie/movie_model.dart';
import '../base/base_movie_listings_model.dart';

part 'popular_movies_model.g.dart';

@JsonSerializable()
class PopularMoviesModel extends BaseMovieListingsModel {
  const PopularMoviesModel({
    super.page,
    super.movies,
    super.totalPages,
    super.totalResults,
  });

  factory PopularMoviesModel.fromJson(Map<String, dynamic> json) {
    return _$PopularMoviesModelFromJson(json);
  }

  @override
  List<Object?> get props => [page, movies, totalPages, totalResults];
}
