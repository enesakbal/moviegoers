// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import '../../movie/movie.dart';

class MovieI extends Equatable {
  final int? page;
  final List<Movie>? movies;
  final int? totalPages;
  final int? totalResults;

  const MovieI({
    this.page,
    this.movies,
    this.totalPages,
    this.totalResults,
  });

  @override
  List<Object?> get props => [
        page,
        movies,
        totalPages,
        totalResults,
      ];
}
