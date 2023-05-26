import 'base/base_movie_listings.dart';

class PopularMovies extends BaseMovieListings {
  const PopularMovies({
    super.movies,
    super.page,
    super.totalPages,
    super.totalResults,
  });

  @override
  List<Object?> get props => [page, movies, totalPages, totalResults];
}
