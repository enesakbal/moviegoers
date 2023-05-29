import '../../../models/movie/movie/movie_model.dart';

abstract class SearchRemoteDataSource {
  Future<List<MovieModel>> searchMovie({required String query, required int page});

  Future<List<MovieModel>> searchPerson(String query);
}
