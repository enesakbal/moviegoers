import 'base/base_movie_listings.dart';

class SimiliarMovies extends BaseMovieListings {
  const SimiliarMovies({
    super.movies,
    super.page,
    super.totalPages,
    super.totalResults,
  });

  @override
  List<Object?> get props => [page, movies, totalPages, totalResults];
}
