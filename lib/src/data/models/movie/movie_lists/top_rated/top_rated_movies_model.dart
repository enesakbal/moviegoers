import 'package:json_annotation/json_annotation.dart';

import '../../movie/movie_model.dart';
import '../base/base_movie_listings_model.dart';

part 'top_rated_movies_model.g.dart';

@JsonSerializable()
class TopRatedMoviesModel extends BaseMovieListingsModel {
  const TopRatedMoviesModel({
    super.page,
    super.movies,
    super.totalPages,
    super.totalResults,
  });

  factory TopRatedMoviesModel.fromJson(Map<String, dynamic> json) {
    return _$TopRatedMoviesModelFromJson(json);
  }

  @override
  List<Object?> get props => [page, movies, totalPages, totalResults];
}
