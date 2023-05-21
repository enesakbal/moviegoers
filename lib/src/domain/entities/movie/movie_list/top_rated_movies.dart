import 'base/movie_interface.dart';

class TopRatedMovies extends MovieI {
  const TopRatedMovies({
    super.movies,
    super.page,
    super.totalPages,
    super.totalResults,
  });

  @override
  List<Object?> get props => [page, movies, totalPages, totalResults];
}
