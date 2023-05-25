import 'package:flutter_test/flutter_test.dart';
import 'package:moviegoers/src/data/models/movie/movie_credit/movie_credit_model.dart';
import 'package:moviegoers/src/data/models/movie/movie_detail/movie_detail_model.dart';
import 'package:moviegoers/src/data/models/movie/movie_external_id/movie_external_id_model.dart';
import 'package:moviegoers/src/data/models/movie/movie_keywords/movie_keywords_model.dart';
import 'package:moviegoers/src/data/models/movie/movie_lists/now_playing/now_playing_movies_model.dart';
import 'package:moviegoers/src/data/models/movie/movie_lists/popular/popular_movies_model.dart';
import 'package:moviegoers/src/data/models/movie/movie_lists/recommendation/recommendation_movies_model.dart';
import 'package:moviegoers/src/data/models/movie/movie_lists/similiar/similiar_movies_model.dart';
import 'package:moviegoers/src/data/models/movie/movie_lists/top_rated/top_rated_movies_model.dart';
import 'package:moviegoers/src/data/models/movie/movie_lists/upcoming/upcoming_movies_model.dart';
import 'package:moviegoers/src/data/models/movie/movie_provider/movie_provider_model.dart';
import 'package:moviegoers/src/data/models/movie/movie_video/movie_video_model.dart';
import 'package:moviegoers/src/domain/entities/movie/movie_keywords/movie_keywords.dart';

import '../../_utils/json_reader.dart';

void main() {
  late dynamic listData;
  late dynamic videolistData;
  late dynamic movieDetailData;
  late dynamic movieExternalData;
  late dynamic creditData;
  late dynamic providerData;
  late dynamic keywordData;

  setUp(() {
    listData = readJson('movie_list_dummy_data.json');
    videolistData = readJson('movie_video_dummy_data.json');
    movieDetailData = readJson('movie_detail_dummy_data.json');
    movieExternalData = readJson('movie_external_id_dummy_data.json');
    creditData = readJson('movie_credit_dummy_data.json');
    providerData = readJson('movie_provider_dummy_data.json');
    keywordData = readJson('movie_keyword_dummy_data.json');
  });

  group('to Entity', () {
    group('Movie Lists', () {
      test('PopularMoviesModel to PopularMovies should be successful', () {
        final model = PopularMoviesModel.fromJson(listData as Map<String, dynamic>);

        final entity = model.toEntity();
        expect(entity, isNotNull);
      });
      test('UpcomingMoviesModel to UpcomingMovies should be successful', () {
        final model = UpcomingMoviesModel.fromJson(listData as Map<String, dynamic>);

        final entity = model.toEntity();
        expect(entity, isNotNull);
      });
      test('TopRatedMoviesModel to TopRatedMovies should be successful', () {
        final model = TopRatedMoviesModel.fromJson(listData as Map<String, dynamic>);

        final entity = model.toEntity();
        expect(entity, isNotNull);
      });

      test('RecommendationMoviesModel to RecommendationMovies should be successful', () {
        final model = RecommendationMoviesModel.fromJson(listData as Map<String, dynamic>);

        final entity = model.toEntity();
        expect(entity, isNotNull);
      });
      test('SimiliarMoviesModel to SimiliarMovies should be successful', () {
        final model = SimiliarMoviesModel.fromJson(listData as Map<String, dynamic>);

        final entity = model.toEntity();
        expect(entity, isNotNull);
      });
      test('NowPlayingMoviesModel to NowPlayingMovies should be successful', () {
        final model = NowPlayingMoviesModel.fromJson(listData as Map<String, dynamic>);

        final entity = model.toEntity();
        expect(entity, isNotNull);
      });
    });

    //* MovieVideoModel
    test('MovieVideoModel to MovieVideo should be successful', () {
      final model = MovieVideoModel.fromJson(videolistData as Map<String, dynamic>);

      final entity = model.toEntity();
      expect(entity, isNotNull);
    });

    //* MovieCreditModel
    test('MovieCreditModel to MovieCredit should be successful', () {
      final model = MovieCreditModel.fromJson(creditData as Map<String, dynamic>);

      final entity = model.toEntity();
      expect(entity, isNotNull);
    });

    //* MovieExternalIdModel
    test('MovieExternalIdModel to MovieExternalId should be successful', () {
      final model = MovieExternalIdModel.fromJson(movieExternalData as Map<String, dynamic>);

      final entity = model.toEntity();
      expect(entity, isNotNull);
    });

    //* MovieDetailModel
    test('MovieDetailModel to MovieDetail should be successful', () {
      final model = MovieDetailModel.fromJson(movieDetailData as Map<String, dynamic>);

      final entity = model.toEntity();
      expect(entity, isNotNull);
    });

    //* MovieProviderModel
    test('MovieProviderModel to MovieProvider should be successful', () {
      final model = MovieProviderModel.fromJson(providerData as Map<String, dynamic>);

      final entity = model.toEntity();
      expect(entity, isNotNull);
    });

    //* MovieKeywordsModel
    test('MovieKeywordsModel to MovieKeyword should be successful', () {
      final model = MovieKeywordsModel.fromJson(keywordData as Map<String, dynamic>);

      final entity = model.toEntity();
      expect(entity, isNotNull);
    });
  });
}
