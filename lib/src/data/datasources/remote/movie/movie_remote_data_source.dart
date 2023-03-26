// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:moviegoers/src/core/init/network/dio_client.dart';
import 'package:moviegoers/src/data/models/movie/movie_external_id/movie_external_id_model.dart';
import 'package:moviegoers/src/data/models/movie/movie_lists/now_playing/now_playing_movies_model.dart';
import 'package:moviegoers/src/data/models/movie/movie_lists/popular/popular_movies_model.dart';
import 'package:moviegoers/src/data/models/movie/movie_lists/recommendation/recommendation_movies_model.dart';
import 'package:moviegoers/src/data/models/movie/movie_video/movie_video_model.dart';

import '../../../models/movie/movie_credit/movie_credit_model.dart';
import '../../../models/movie/movie_detail/movie_detail_model.dart';
import '../../../models/movie/movie_lists/similiar/similiar_movies_model.dart';
import '../../../models/movie/movie_lists/upcoming/upcoming_movies_model.dart';

abstract class MovieRemoteDataSource {
  final DioClient dioClient;
  MovieRemoteDataSource({required this.dioClient});

  Future<PopularMoviesModel> getPopularMovies({required int page});

  Future<NowPlayingMoviesModel> getNowPlayingMovies({required int page});

  Future<UpcomingMoviesModel> getUpcomingMovies({required int page});

  Future<MovieDetailModel> getMovieDetails({required String movieID});

  Future<MovieCreditModel> getMovieCredits({required String movieID});

  Future<MovieExternalIdModel> getMovieExternalIDs({required String movieID});

  Future<MovieVideoModel> getMovieVideos({required String movieID});

  Future<RecommendationMoviesModel> getMovieRecommendations({required String movieID, required int page});

  Future<SimiliarMoviesModel> getMovieSimilar({required String movieID, required int page});

  // Future<void> rateMovie({required String movieID});

  // Future<void> deleteRateMovie({required String movieID});
}
