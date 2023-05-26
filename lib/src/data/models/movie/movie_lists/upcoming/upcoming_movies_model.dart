import 'package:json_annotation/json_annotation.dart';

import '../../movie/movie_model.dart';
import '../base/base_movie_listings_model.dart';
import '../dates_model.dart';

part 'upcoming_movies_model.g.dart';

@JsonSerializable()
class UpcomingMoviesModel extends BaseMovieListingsModel {
  const UpcomingMoviesModel({
    super.page,
    super.movies,
    super.totalPages,
    super.totalResults,
    super.dates,
  });

  factory UpcomingMoviesModel.fromJson(Map<String, dynamic> json) {
    return _$UpcomingMoviesModelFromJson(json);
  }

  @override
  List<Object?> get props => [page, movies, totalPages, totalResults, dates];
}
