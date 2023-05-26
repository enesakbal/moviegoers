import 'package:json_annotation/json_annotation.dart';

import '../../movie/movie_model.dart';
import '../base/base_movie_listings_model.dart';
import '../dates_model.dart';

part 'now_playing_movies_model.g.dart';

@JsonSerializable()
class NowPlayingMoviesModel extends BaseMovieListingsModel {
  const NowPlayingMoviesModel({super.movies, super.page, super.totalPages, super.totalResults, super.dates});

  factory NowPlayingMoviesModel.fromJson(Map<String, dynamic> json) {
    return _$NowPlayingMoviesModelFromJson(json);
  }

  @override
  List<Object?> get props => [page, movies, totalPages, totalResults, dates];
}
