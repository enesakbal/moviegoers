import 'base/base_movie_listings.dart';

class TopRatedMovies extends BaseMovieListings {
  const TopRatedMovies({
    super.movies,
    super.page,
    super.totalPages,
    super.totalResults,
  });

  @override
  List<Object?> get props => [page, movies, totalPages, totalResults];
}
