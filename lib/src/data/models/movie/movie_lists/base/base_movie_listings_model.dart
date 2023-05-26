import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../../domain/entities/movie/movie_list/base/base_movie_listings.dart';
import '../../movie/movie_model.dart';
import '../dates_model.dart';

@JsonSerializable()
class BaseMovieListingsModel extends Equatable {
  final int? page;
  final DatesModel? dates;
  @JsonKey(name: 'results')
  final List<MovieModel>? movies;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @JsonKey(name: 'total_results')
  final int? totalResults;

  const BaseMovieListingsModel({
    this.page,
    this.movies,
    this.totalPages,
    this.totalResults,
    this.dates,
  });

  BaseMovieListings toEntity() => BaseMovieListings(
        dates: dates == null ? null : dates!.toEntity(),
        movies: movies!.map((e) => e.toEntity()).toList(),
        page: page,
        totalPages: totalPages,
        totalResults: totalPages,
      );

  @override
  List<Object?> get props => [page, movies, totalPages, totalResults, dates];
}
