import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:moviegoers/src/data/models/movie/movie_lists/base/base_movie_listings_model.dart';
import 'package:moviegoers/src/domain/entities/movie/movie/movie.dart';
import 'package:moviegoers/src/domain/entities/movie/movie_list/base/base_movie_listings.dart';
import 'package:moviegoers/src/domain/usecases/search_usecase.dart';

import '../../_utils/json_reader.dart';
import '../../_utils/mock/test_mocks.mocks.dart';

void main() {
  late Map<String, dynamic> movieList;

  late BaseMovieListings tBaseMovieListingsEntity;

  late MockSearchRepository mockSearchRepository;
  late SearchUsecase usecase;

  setUp(() {
    //* initialize
    dotenv.testLoad(fileInput: File('.env').readAsStringSync());
    movieList = readJson('movie_list_dummy_data.json') as Map<String, dynamic>;

    //* fake data
    tBaseMovieListingsEntity = BaseMovieListingsModel.fromJson(movieList).toEntity();

    //* mock
    mockSearchRepository = MockSearchRepository();
    usecase = SearchUsecase(repository: mockSearchRepository);
  });

  group('Movie Lists', () {
    test('Search Movie', () async {
      when(mockSearchRepository.searchMovie(query: '', page: 1))
          .thenAnswer((_) async => Right(tBaseMovieListingsEntity.movies!));

      final result = await usecase.searchMovie(query: '', page: 1);
      expect(result, Right<dynamic, List<Movie>?>(tBaseMovieListingsEntity.movies));
    });
  });
}
