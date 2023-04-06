import 'base/movie_interface.dart';

class RecommendationMovies extends MovieI {
  const RecommendationMovies({
    super.movies,
    super.page,
    super.totalPages,
    super.totalResults,
  });

  @override
  List<Object?> get props => [page, movies, totalPages, totalResults];
}
