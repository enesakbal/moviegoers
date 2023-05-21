import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:moviegoers/src/core/constants/app_constants.dart';
import 'package:moviegoers/src/core/constants/url_constants.dart';
import 'package:moviegoers/src/core/init/network/dio_client.dart';
import 'package:moviegoers/src/data/datasources/remote/movie/movie_remote_data_source.dart';
import 'package:moviegoers/src/data/datasources/remote/movie/movie_remote_data_source_impl.dart';
import 'package:moviegoers/src/data/models/movie/movie_credit/movie_credit_model.dart';
import 'package:moviegoers/src/data/models/movie/movie_detail/movie_detail_model.dart';
import 'package:moviegoers/src/data/models/movie/movie_external_id/movie_external_id_model.dart';
import 'package:moviegoers/src/data/models/movie/movie_lists/now_playing/now_playing_movies_model.dart';
import 'package:moviegoers/src/data/models/movie/movie_lists/popular/popular_movies_model.dart';
import 'package:moviegoers/src/data/models/movie/movie_lists/recommendation/recommendation_movies_model.dart';
import 'package:moviegoers/src/data/models/movie/movie_lists/similiar/similiar_movies_model.dart';
import 'package:moviegoers/src/data/models/movie/movie_lists/top_rated/top_rated_movies_model.dart';
import 'package:moviegoers/src/data/models/movie/movie_lists/upcoming/upcoming_movies_model.dart';
import 'package:moviegoers/src/data/models/movie/movie_provider/movie_provider_model.dart';
import 'package:moviegoers/src/data/models/movie/movie_video/movie_video_model.dart';

void main() {
  late Dio dio;
  late DioAdapter dioAdapter;
  late DioClient client;
  late MovieRemoteDataSource dataSource;
  late String tMovieID;

  setUp(() {
    dotenv.testLoad(fileInput: File('.env').readAsStringSync());
    dio = Dio();
  });

  group('dummy', () {
    setUp(() {
      dioAdapter = DioAdapter(dio: dio);
      dio.httpClientAdapter = dioAdapter;
    });
    test(
      'should return response code is 200',
      () async {
        dioAdapter.onGet(
          UrlContants.popularMovies,
          (request) => request.reply(200, {'message': 'Done'}),
        );

        final response = await dio.get<Map<String, dynamic>>(
          UrlContants.popularMovies,
          queryParameters: {'api_key': ApplicationConstants.apiKey},
        );

        expect(response.statusCode, 200);
      },
    );
  });

  group('API', () {
    setUp(() {
      client = DioClient(dio);
      dataSource = MovieRemoteDataSourceImpl(dioClient: client);
      tMovieID = '550';
    });

    test('getPopularMovies should return PopularMoviesModel', () async {
      final response = await dataSource.getPopularMovies(page: 1);
      expect(response, isA<PopularMoviesModel>());
    });

    test('getNowPlayingMovies should return NowPlayingMoviesModel', () async {
      final response = await dataSource.getNowPlayingMovies(page: 1);
      expect(response, isA<NowPlayingMoviesModel>());
    });

    test('getUpcomingMovies should return UpcomingMoviesModel', () async {
      final response = await dataSource.getUpcomingMovies(page: 1);
      expect(response, isA<UpcomingMoviesModel>());
    });

    test('getTopRatedMovies should return TopRatedMoviesModel', () async {
      final response = await dataSource.getTopRatedMovies(page: 1);
      expect(response, isA<TopRatedMoviesModel>());
    });

    test('getMovieDetails should return MovieDetailModel', () async {
      final response = await dataSource.getMovieDetails(movieID: tMovieID);
      expect(response, isA<MovieDetailModel>());
    });

    test('getMovieCredits should return MovieCreditModel', () async {
      final response = await dataSource.getMovieCredits(movieID: tMovieID);
      expect(response, isA<MovieCreditModel>());
    });

    test('getMovieExternalIDs should return MovieExternalIdModel', () async {
      final response = await dataSource.getMovieExternalIDs(movieID: tMovieID);
      expect(response, isA<MovieExternalIdModel>());
    });

    test('getMovieProviders should return MovieProviderModel', () async {
      final response = await dataSource.getMovieProviders(movieID: tMovieID);
      expect(response, isA<MovieProviderModel>());
    });

    test('getMovieVideos should return MovieVideoModel', () async {
      final response = await dataSource.getMovieVideos(movieID: tMovieID);
      expect(response, isA<MovieVideoModel>());
    });

    test('getMovieRecommendations should return RecommendationMoviesModel', () async {
      final response = await dataSource.getMovieRecommendations(movieID: tMovieID, page: 1);
      expect(response, isA<RecommendationMoviesModel>());
    });

    test('getMovieSimilar should return SimiliarMoviesModel', () async {
      final response = await dataSource.getMovieSimilars(movieID: tMovieID, page: 1);
      expect(response, isA<SimiliarMoviesModel>());
    });
  });
}
