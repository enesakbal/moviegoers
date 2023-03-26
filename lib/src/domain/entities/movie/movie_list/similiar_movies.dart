import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:moviegoers/src/domain/entities/movie/movie/movie.dart';

class SimiliarMovies extends Equatable {
  final int? page;
  final List<Movie>? movies;
  final int? totalPages;
  final int? totalResults;

  const SimiliarMovies({
    this.page,
    this.movies,
    this.totalPages,
    this.totalResults,
  });

  factory SimiliarMovies.fromMap(Map<String, dynamic> data) => SimiliarMovies(
        page: data['page'] as int?,
        movies: (data['movies'] as List<dynamic>?)
            ?.map((e) => Movie.fromMap(e as Map<String, dynamic>))
            .toList(),
        totalPages: data['total_pages'] as int?,
        totalResults: data['total_results'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'page': page,
        'results': movies?.map((e) => e.toMap()).toList(),
        'total_pages': totalPages,
        'total_results': totalResults,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [SimiliarMovies].
  factory SimiliarMovies.fromJson(String data) {
    return SimiliarMovies.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [SimiliarMovies] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props => [page, movies, totalPages, totalResults];
}
