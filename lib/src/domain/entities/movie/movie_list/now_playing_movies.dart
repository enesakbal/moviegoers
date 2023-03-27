import 'package:equatable/equatable.dart';

import '../movie/movie.dart';
import 'dates.dart';

class NowPlayingMovies extends Equatable {
  final int? page;
  final List<Movie>? movies;
  final Dates? dates;
  final int? totalPages;
  final int? totalResults;

  const NowPlayingMovies({
    this.page,
    this.movies,
    this.dates,
    this.totalPages,
    this.totalResults,
  });

  @override
  List<Object?> get props {
    return [
      page,
      movies,
      dates,
      totalPages,
      totalResults,
    ];
  }
}
