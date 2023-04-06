import 'base/movie_interface.dart';

class SimiliarMovies extends MovieI {
  const SimiliarMovies({
    super.movies,
    super.page,
    super.totalPages,
    super.totalResults,
  });

  @override
  List<Object?> get props => [page, movies, totalPages, totalResults];
}
