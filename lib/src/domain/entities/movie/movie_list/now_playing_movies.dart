import 'base/movie_interface.dart';
import 'dates.dart';

class NowPlayingMovies extends MovieI {
  final Dates? dates;

  const NowPlayingMovies({
    this.dates,
    super.movies,
    super.page,
    super.totalPages,
    super.totalResults,
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
