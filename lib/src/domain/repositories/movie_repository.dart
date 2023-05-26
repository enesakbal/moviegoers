import 'package:dartz/dartz.dart';

import '../../core/init/network/network_exception.dart';
import '../../data/models/movie/movie/movie_model.dart';
import '../entities/movie/movie/movie.dart';
import '../entities/movie/movie_credit/movie_credit.dart';
import '../entities/movie/movie_detail/movie_detail.dart';
import '../entities/movie/movie_external_id/movie_external_id.dart';
import '../entities/movie/movie_keywords/movie_keywords.dart';
import '../entities/movie/movie_provider/movie_provider.dart';
import '../entities/movie/movie_video/movie_video.dart';

abstract class MovieRepository {
  Future<Either<NetworkExceptions,  List<Movie>?>> getPopularMovies({required int page});
  //* /movie/popular

  Future<Either<NetworkExceptions,  List<Movie>?>> getNowPlayingMovies({required int page});
  //* /movie/now_playing

  Future<Either<NetworkExceptions,  List<Movie>?>> getUpcomingMovies({required int page});
  //* /movie/upcoming

  Future<Either<NetworkExceptions,  List<Movie>?>> getTopRatedMovies({required int page});
  //* /movie/top_rated

  Future<Either<NetworkExceptions, MovieDetail>> getMovieDetails({required String movieID});
  //* /movie/{movie_id}

  Future<Either<NetworkExceptions, MovieCredit>> getMovieCredits({required String movieID});
  //* /movie/{movie_id}/credits

  Future<Either<NetworkExceptions, MovieExternalId>> getMovieExternalIDs({required String movieID});
  //* /movie/{movie_id}/external_ids {facebook insta twitter imdb id}

  Future<Either<NetworkExceptions, MovieVideo>> getMovieVideos({required String movieID});
  //* /movie/{movie_id}/videos {trail, clip...}

  Future<Either<NetworkExceptions,  List<Movie>?>> getMovieRecommendations({
    required String movieID,
    required int page,
  });
  //* /movie/{movie_id}/recommendations (Get a list of recommended movies for a movie.)

  Future<Either<NetworkExceptions,  List<Movie>?>> getMovieSimilars({required String movieID, required int page});
  //* /movie/{movie_id}/similar (These items are assembled by looking at keywords and genres.)

  Future<Either<NetworkExceptions, MovieProvider>> getMovieProviders({required String movieID});
  //* /movie/{movie_id}/watch/providers

  Future<Either<NetworkExceptions, MovieKeywords>> getMovieKeywords({required String movieID});
  //* /movie/{movie_id}/keywords

  // Future<Either<NetworkExceptions,>> rateMovie({required String movieID});
  // //* need session_id or guest id
  // //* /movie/{movie_id}/rating (post)body=>{"rate":4.5}

  // Future<Either<NetworkExceptions,>> deleteRateMovie({required String movieID});
  // //* need session_id or guest id
  // //* /movie/{movie_id}/rating (delete) body=>{"rate":4.5}
}
