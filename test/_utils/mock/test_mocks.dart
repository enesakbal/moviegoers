import 'package:mockito/annotations.dart';
import 'package:moviegoers/src/data/datasources/remote/movie/movie_remote_data_source.dart';
import 'package:moviegoers/src/data/datasources/remote/search/search_remote_data_source.dart';
import 'package:moviegoers/src/domain/repositories/movie_repository.dart';
import 'package:moviegoers/src/domain/repositories/search_repository.dart';

@GenerateMocks([
  MovieRepository,
  MovieRemoteDataSource,
  SearchRepository,
  SearchRemoteDataSource,
])
void main() {}
