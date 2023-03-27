import 'package:mockito/annotations.dart';
import 'package:moviegoers/src/data/datasources/remote/movie/movie_remote_data_source.dart';
import 'package:moviegoers/src/domain/repositories/movie_repository.dart';

@GenerateMocks([
  MovieRepository,
  MovieRemoteDataSource,
])
void main() {}
