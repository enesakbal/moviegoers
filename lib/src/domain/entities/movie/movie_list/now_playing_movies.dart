import 'base/base_movie_listings.dart';

class NowPlayingMovies extends BaseMovieListings {
  const NowPlayingMovies({
    super.dates,
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
