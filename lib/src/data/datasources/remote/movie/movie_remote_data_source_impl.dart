import 'dart:developer';

import '../../../../core/constants/url_constants.dart';
import '../../../../core/init/network/dio_client.dart';
import '../../../models/movie/movie_credit/movie_credit_model.dart';
import '../../../models/movie/movie_detail/movie_detail_model.dart';
import '../../../models/movie/movie_external_id/movie_external_id_model.dart';
import '../../../models/movie/movie_lists/now_playing/now_playing_movies_model.dart';
import '../../../models/movie/movie_lists/popular/popular_movies_model.dart';
import '../../../models/movie/movie_lists/recommendation/recommendation_movies_model.dart';
import '../../../models/movie/movie_lists/similiar/similiar_movies_model.dart';
import '../../../models/movie/movie_lists/upcoming/upcoming_movies_model.dart';
import '../../../models/movie/movie_provider/movie_provider_model.dart';
import '../../../models/movie/movie_video/movie_video_model.dart';
import 'movie_remote_data_source.dart';

class MovieRemoteDataSourceImpl extends MovieRemoteDataSource {
  final DioClient dioClient;
  MovieRemoteDataSourceImpl({required this.dioClient});

  @override
  Future<PopularMoviesModel> getPopularMovies({required int page}) async {
    try {
      final response = await dioClient.get(UrlContants.popularMovies, queryParameters: {'page': page});
      final movieList = PopularMoviesModel.fromJson(response.data as Map<String, dynamic>);

      return movieList;
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<NowPlayingMoviesModel> getNowPlayingMovies({required int page}) async {
    try {
      final response = await dioClient.get(UrlContants.nowPlayingMovies, queryParameters: {'page': page});
      final movieList = NowPlayingMoviesModel.fromJson(response.data as Map<String, dynamic>);

      return movieList;
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<UpcomingMoviesModel> getUpcomingMovies({required int page}) async {
    try {
      final response = await dioClient.get(UrlContants.upcomingMovies, queryParameters: {'page': page});
      final movieList = UpcomingMoviesModel.fromJson(response.data as Map<String, dynamic>);

      return movieList;
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<MovieDetailModel> getMovieDetails({required String movieID}) async {
    try {
      final response = await dioClient.get(UrlContants.movieDetail.replaceAll('{movie_id}', movieID));
      final movieList = MovieDetailModel.fromJson(response.data as Map<String, dynamic>);

      return movieList;
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<MovieCreditModel> getMovieCredits({required String movieID}) async {
    try {
      final response = await dioClient.get(UrlContants.movieCredits.replaceAll('{movie_id}', movieID));
      final movieList = MovieCreditModel.fromJson(response.data as Map<String, dynamic>);

      return movieList;
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<MovieExternalIdModel> getMovieExternalIDs({required String movieID}) async {
    try {
      final response = await dioClient.get(UrlContants.movieExternalIDs.replaceAll('{movie_id}', movieID));
      final movieList = MovieExternalIdModel.fromJson(response.data as Map<String, dynamic>);

      return movieList;
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<MovieProviderModel> getMovieProviders({required String movieID}) async {
    try {
      final response = await dioClient.get(UrlContants.movieProviders.replaceAll('{movie_id}', movieID));
      log(((response.data as Map<String, dynamic>)['results'] as Map<String, dynamic>).length.toString());

      final movieProviderList = MovieProviderModel.fromJson(response.data as Map<String, dynamic>);

      return movieProviderList;
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<MovieVideoModel> getMovieVideos({required String movieID}) async {
    try {
      final response = await dioClient.get(UrlContants.movieVideos.replaceAll('{movie_id}', movieID));
      final movieList = MovieVideoModel.fromJson(response.data as Map<String, dynamic>);

      return movieList;
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<RecommendationMoviesModel> getMovieRecommendations({required String movieID, required int page}) async {
    try {
      final response = await dioClient.get(
        UrlContants.movieRecommendations.replaceAll('{movie_id}', movieID),
        queryParameters: {'page': page},
      );
      final movieList = RecommendationMoviesModel.fromJson(response.data as Map<String, dynamic>);

      return movieList;
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<SimiliarMoviesModel> getMovieSimilars({required String movieID, required int page}) async {
    try {
      final response = await dioClient.get(
        UrlContants.movieSimilar.replaceAll('{movie_id}', movieID),
        queryParameters: {'page': page},
      );
      final movieList = SimiliarMoviesModel.fromJson(response.data as Map<String, dynamic>);

      return movieList;
    } on Exception catch (_) {
      rethrow;
    }
  }

  //? can add https://developers.themoviedb.org/3/movies/get-movie-reviews

  //* with auth
  // @override
  // Future<void> rateMovie({required String movieID}) {
  //   // TODO: implement rateMovie
  //   throw UnimplementedError();
  // }

  // @override
  // Future<void> deleteRateMovie({required String movieID}) {
  //   // TODO: implement deleteRateMovie
  //   throw UnimplementedError();
  // }
}
