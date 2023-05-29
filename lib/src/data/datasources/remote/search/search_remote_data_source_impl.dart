import '../../../../core/constants/url_constants.dart';
import '../../../../core/init/network/dio_client.dart';
import '../../../models/movie/movie/movie_model.dart';
import '../../../models/movie/movie_lists/base/base_movie_listings_model.dart';
import 'search_remote_data_source.dart';

class SearchRemoteDataSourceImpl implements SearchRemoteDataSource {
  final DioClient dioClient;

  const SearchRemoteDataSourceImpl({required this.dioClient});

  @override
  Future<List<MovieModel>> searchMovie({required String query, required int page}) async {
    try {
      final response = await dioClient.get(UrlContants.searchMovie, queryParameters: {'query': query, 'page': page});

      final movieList = BaseMovieListingsModel.fromJson(response.data as Map<String,dynamic>);

      return movieList.movies!;
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<List<MovieModel>> searchPerson(String query) {
    // TODO: implement searchPerson
    throw UnimplementedError();
  }
}
