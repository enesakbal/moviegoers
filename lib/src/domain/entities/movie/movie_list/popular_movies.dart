import 'dart:convert';

import 'package:equatable/equatable.dart';

import '../movie/movie.dart';

class PopularMovies extends Equatable {
  final int? page;
  final List<Movie>? movies;
  final int? totalPages;
  final int? totalResults;

  const PopularMovies({
    this.page,
    this.movies,
    this.totalPages,
    this.totalResults,
  });

  factory PopularMovies.fromMap(Map<String, dynamic> data) => PopularMovies(
        page: data['page'] as int?,
        movies: (data['movies'] as List<dynamic>?)?.map((e) => Movie.fromMap(e as Map<String, dynamic>)).toList(),
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
  /// Parses the string and returns the resulting Json object as [PopularMovies].
  factory PopularMovies.fromJson(String data) {
    return PopularMovies.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [PopularMovies] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props => [page, movies, totalPages, totalResults];
}
