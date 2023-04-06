import 'base/movie_interface.dart';

class PopularMovies extends MovieI {
  const PopularMovies({
    super.movies,
    super.page,
    super.totalPages,
    super.totalResults,
  });

  @override
  List<Object?> get props => [page, movies, totalPages, totalResults];
}
