abstract class MovieRepository {
  Future<void> getPopularMovies({required int page});
  //* /movie/popular

  Future<void> getNowPlayingMovies({required int page});
  //* /movie/now_playing

  Future<void> getUpcomingMovies({required int page});
  //* /movie/upcoming

  Future<void> getMovieDetails({required String movieID});
  //* /movie/{movie_id}

  Future<void> getMovieCredits({required String movieID});
  //* /movie/{movie_id}/credits

  Future<void> getMovieExternalIDs({required String movieID});
  //* /movie/{movie_id}/external_ids {facebook insta twitter imdb id}

  Future<void> getMovieVideos({required String movieID});
  //* /movie/{movie_id}/videos {trail, clip...}

  Future<void> getMovieRecommendations(
      {required String movieID, required int page});
  //* /movie/{movie_id}/recommendations (Get a list of recommended movies for a movie.)

  Future<void> getMovieSimilar({required String movieID, required int page});
  //* /movie/{movie_id}/similar (These items are assembled by looking at keywords and genres.)

  Future<void> rateMovie({required String movieID});
  //* need session_id or guest id
  //* /movie/{movie_id}/rating (post)body=>{"rate":4.5}

  Future<void> deleteRateMovie({required String movieID});
  //* need session_id or guest id
  //* /movie/{movie_id}/rating (delete) body=>{"rate":4.5}
}
