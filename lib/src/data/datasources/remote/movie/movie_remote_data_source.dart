// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../../models/movie/movie/movie_model.dart';
import '../../../models/movie/movie_credit/movie_credit_model.dart';
import '../../../models/movie/movie_detail/movie_detail_model.dart';
import '../../../models/movie/movie_external_id/movie_external_id_model.dart';
import '../../../models/movie/movie_keywords/movie_keywords_model.dart';
import '../../../models/movie/movie_provider/movie_provider_model.dart';
import '../../../models/movie/movie_video/movie_video_model.dart';

abstract class MovieRemoteDataSource {
  Future<List<MovieModel>?> getPopularMovies({required int page});

  Future<List<MovieModel>?> getNowPlayingMovies({required int page});

  Future<List<MovieModel>?> getUpcomingMovies({required int page});

  Future<List<MovieModel>?> getTopRatedMovies({required int page});

  Future<MovieDetailModel> getMovieDetails({required String movieID});

  Future<MovieCreditModel> getMovieCredits({required String movieID});

  Future<MovieExternalIdModel> getMovieExternalIDs({required String movieID});

  Future<MovieProviderModel> getMovieProviders({required String movieID});

  Future<MovieVideoModel> getMovieVideos({required String movieID});

  Future<List<MovieModel>?> getMovieRecommendations({required String movieID, required int page});

  Future<List<MovieModel>?> getMovieSimilars({required String movieID, required int page});

  Future<MovieKeywordsModel> getMovieKeywords({required String movieID});

  // Future<void> rateMovie({required String movieID});

  // Future<void> deleteRateMovie({required String movieID});
}
