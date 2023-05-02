import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:moviegoers/src/data/models/movie/movie_credit/movie_credit_model.dart';
import 'package:moviegoers/src/data/models/movie/movie_detail/movie_detail_model.dart';
import 'package:moviegoers/src/data/models/movie/movie_external_id/movie_external_id_model.dart';
import 'package:moviegoers/src/data/models/movie/movie_lists/now_playing/now_playing_movies_model.dart';
import 'package:moviegoers/src/data/models/movie/movie_lists/popular/popular_movies_model.dart';
import 'package:moviegoers/src/data/models/movie/movie_lists/recommendation/recommendation_movies_model.dart';
import 'package:moviegoers/src/data/models/movie/movie_lists/similiar/similiar_movies_model.dart';
import 'package:moviegoers/src/data/models/movie/movie_lists/upcoming/upcoming_movies_model.dart';
import 'package:moviegoers/src/data/models/movie/movie_provider/movie_provider_model.dart';
import 'package:moviegoers/src/data/models/movie/movie_video/movie_video_model.dart';
import 'package:moviegoers/src/domain/entities/movie/movie_credit/movie_credit.dart';
import 'package:moviegoers/src/domain/entities/movie/movie_detail/movie_detail.dart';
import 'package:moviegoers/src/domain/entities/movie/movie_external_id/movie_external_id.dart';
import 'package:moviegoers/src/domain/entities/movie/movie_list/now_playing_movies.dart';
import 'package:moviegoers/src/domain/entities/movie/movie_list/popular_movies.dart';
import 'package:moviegoers/src/domain/entities/movie/movie_list/recommendation_movies.dart';
import 'package:moviegoers/src/domain/entities/movie/movie_list/similiar_movies.dart';
import 'package:moviegoers/src/domain/entities/movie/movie_list/upcoming_movies.dart';
import 'package:moviegoers/src/domain/entities/movie/movie_video/movie_video.dart';
import 'package:moviegoers/src/domain/entities/movie_provider/movie_provider.dart';
import 'package:moviegoers/src/domain/usecases/movie_usecase.dart';

import '../../_utils/json_reader.dart';
import '../../_utils/mock/test_mocks.mocks.dart';

void main() {
  late Map<String, dynamic> movieList;
  late Map<String, dynamic> movieCredit;
  late Map<String, dynamic> externalId;
  late Map<String, dynamic> movieDetail;
  late Map<String, dynamic> movieVideo;
  late Map<String, dynamic> movieProvider;

  late PopularMovies tPopularMoviesEntity;
  late NowPlayingMovies tNowPlayingMoviesEntity;
  late UpcomingMovies tUpcomingMoviesEntity;
  late RecommendationMovies tRecommendationMoviesEntity;
  late SimiliarMovies tSimiliarMoviesEntity;

  late MovieDetail tMovieDetailsEntity;
  late MovieCredit tMovieCreditEntity;
  late MovieExternalId tMovieExternalIdEntity;
  late MovieVideo tMovieVideoEntity;
  late MovieProvider tMovieProviderEntity;

  late MockMovieRepository mockMovieRepository;
  late MovieUsecase usecase;

  setUp(() {
    //* initialize
    dotenv.testLoad(fileInput: File('.env').readAsStringSync());
    movieList = readJson('movie_list_dummy_data.json') as Map<String, dynamic>;
    movieCredit = readJson('movie_credit_dummy_data.json') as Map<String, dynamic>;
    externalId = readJson('movie_external_id_dummy_data.json') as Map<String, dynamic>;
    movieDetail = readJson('movie_detail_dummy_data.json') as Map<String, dynamic>;
    movieVideo = readJson('movie_video_dummy_data.json') as Map<String, dynamic>;
    movieProvider = readJson('movie_provider_dummy_data.json') as Map<String, dynamic>;

    //* fake data
    tPopularMoviesEntity = PopularMoviesModel.fromJson(movieList).toEntity();
    tNowPlayingMoviesEntity = NowPlayingMoviesModel.fromJson(movieList).toEntity();
    tUpcomingMoviesEntity = UpcomingMoviesModel.fromJson(movieList).toEntity();
    tRecommendationMoviesEntity = RecommendationMoviesModel.fromJson(movieList).toEntity();
    tSimiliarMoviesEntity = SimiliarMoviesModel.fromJson(movieList).toEntity();
    tMovieDetailsEntity = MovieDetailModel.fromJson(movieDetail).toEntity();
    tMovieCreditEntity = MovieCreditModel.fromJson(movieCredit).toEntity();
    tMovieExternalIdEntity = MovieExternalIdModel.fromJson(externalId).toEntity();
    tMovieVideoEntity = MovieVideoModel.fromJson(movieVideo).toEntity();
    tMovieProviderEntity = MovieProviderModel.fromJson(movieProvider).toEntity();

    //* mock
    mockMovieRepository = MockMovieRepository();
    usecase = MovieUsecase(repository: mockMovieRepository);
  });

  group('Movie Lists', () {
    test('Popular', () async {
      when(mockMovieRepository.getPopularMovies(page: 1)).thenAnswer((_) async => Right(tPopularMoviesEntity));

      final result = await usecase.getPopularMovies(page: 1);
      expect(result, Right<dynamic, PopularMovies>(tPopularMoviesEntity));
    });
    test('Now Playing', () async {
      when(mockMovieRepository.getNowPlayingMovies(page: 1)).thenAnswer((_) async => Right(tNowPlayingMoviesEntity));

      final result = await usecase.getNowPlayingMovies(page: 1);
      expect(result, Right<dynamic, NowPlayingMovies>(tNowPlayingMoviesEntity));
    });
    test('Upcoming', () async {
      when(mockMovieRepository.getUpcomingMovies(page: 1)).thenAnswer((_) async => Right(tUpcomingMoviesEntity));
      final result = await usecase.getUpcomingMovies(page: 1);
      expect(result, Right<dynamic, UpcomingMovies>(tUpcomingMoviesEntity));
    });
    test('Recommendation', () async {
      when(mockMovieRepository.getMovieRecommendations(page: 1, movieID: '550'))
          .thenAnswer((_) async => Right(tRecommendationMoviesEntity));

      final result = await usecase.getMovieRecommendations(page: 1, movieID: '550');
      expect(result, Right<dynamic, RecommendationMovies>(tRecommendationMoviesEntity));
    });
    test('Similar', () async {
      when(mockMovieRepository.getMovieSimilars(page: 1, movieID: '550'))
          .thenAnswer((_) async => Right(tSimiliarMoviesEntity));

      final result = await usecase.getMovieSimilars(page: 1, movieID: '550');
      expect(result, Right<dynamic, SimiliarMovies>(tSimiliarMoviesEntity));
    });
  });

  test('Credits ', () async {
    when(mockMovieRepository.getMovieCredits(movieID: '550')).thenAnswer((_) async => Right(tMovieCreditEntity));

    final result = await usecase.getMovieCredits(movieID: '550');
    expect(result, Right<dynamic, MovieCredit>(tMovieCreditEntity));
  });

  test('Detail ', () async {
    when(mockMovieRepository.getMovieDetails(movieID: '550')).thenAnswer((_) async => Right(tMovieDetailsEntity));

    final result = await usecase.getMovieDetails(movieID: '550');
    expect(result, Right<dynamic, MovieDetail>(tMovieDetailsEntity));
  });

  test('External ID ', () async {
    when(mockMovieRepository.getMovieExternalIDs(movieID: '550'))
        .thenAnswer((_) async => Right(tMovieExternalIdEntity));

    final result = await usecase.getMovieExternalIDs(movieID: '550');
    expect(result, Right<dynamic, MovieExternalId>(tMovieExternalIdEntity));
  });
  test('Video', () async {
    when(mockMovieRepository.getMovieVideos(movieID: '550')).thenAnswer((_) async => Right(tMovieVideoEntity));

    final result = await usecase.getMovieVideos(movieID: '550');
    expect(result, Right<dynamic, MovieVideo>(tMovieVideoEntity));
  });

  test('Provider', () async {
    when(mockMovieRepository.getMovieProviders(movieID: '550')).thenAnswer((_) async => Right(tMovieProviderEntity));

    final result = await usecase.getMovieProviders(movieID: '550');
    expect(result, Right<dynamic, MovieProvider>(tMovieProviderEntity));
  });
}
