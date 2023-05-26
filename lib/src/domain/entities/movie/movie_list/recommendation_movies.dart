import 'base/base_movie_listings.dart';

class RecommendationMovies extends BaseMovieListings {
  const RecommendationMovies({
    super.movies,
    super.page,
    super.totalPages,
    super.totalResults,
  });

  @override
  List<Object?> get props => [page, movies, totalPages, totalResults];
}
