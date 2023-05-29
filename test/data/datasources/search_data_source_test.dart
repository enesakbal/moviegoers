import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:moviegoers/src/core/init/network/dio_client.dart';
import 'package:moviegoers/src/data/datasources/remote/search/search_remote_data_source.dart';
import 'package:moviegoers/src/data/datasources/remote/search/search_remote_data_source_impl.dart';
import 'package:moviegoers/src/data/models/movie/movie/movie_model.dart';

void main() {
  late Dio dio;
  late DioAdapter dioAdapter;
  late DioClient client;
  late SearchRemoteDataSource dataSource;
  late String tSearch;

  setUp(() {
    dotenv.testLoad(fileInput: File('.env').readAsStringSync());
    dio = Dio();
  });

  group('dummy', () {
    setUp(() {
      dioAdapter = DioAdapter(dio: dio);
      dio.httpClientAdapter = dioAdapter;
    });
  });

  group('API', () {
    setUp(() {
      client = DioClient(dio);
      dataSource = SearchRemoteDataSourceImpl(dioClient: client);
      tSearch = 'the lord';
    });

    test('searchMovie should return List<MovieModel>', () async {
      final response = await dataSource.searchMovie(query: tSearch, page: 1);
      expect(response, isA<List<MovieModel>>());
    });
  });
}
