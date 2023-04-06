import 'base/movie_interface.dart';
import 'dates.dart';

class UpcomingMovies extends MovieI {
  final Dates? dates;

  const UpcomingMovies({
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
