class UrlContants {
  //* movie lists
  static const popularMovies = '/movie/popular';
  static const nowPlayingMovies = '/movie/now_playing';
  static const upcomingMovies = '/movie/upcoming';

  //* movie info
  static const movieDetail = '/movie/{movie_id}';
  static const movieCredits = '/movie/{movie_id}/credits';
  static const movieExternalIDs = '/movie/{movie_id}/external_ids';
  static const movieProviders = '/movie/{movie_id}/watch/providers';
  static const movieVideos = '/movie/{movie_id}/videos';
  static const movieRecommendations = '/movie/{movie_id}/recommendations';
  static const movieSimilar = '/movie/{movie_id}/similar';

  //* rate
  static const movieRating = '/movie/{movie_id}/rating';
}
