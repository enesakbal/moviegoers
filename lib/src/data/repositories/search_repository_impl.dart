import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/init/network/network_exception.dart';
import '../../domain/entities/movie/movie/movie.dart';
import '../../domain/repositories/search_repository.dart';
import '../datasources/remote/search/search_remote_data_source.dart';

class SearchRepositoryImpl implements SearchRepository {
  final SearchRemoteDataSource dataSource;
  SearchRepositoryImpl({required this.dataSource});

  @override
  Future<Either<NetworkExceptions, List<Movie>>> searchMovie({required String query, required int page}) async {
    try {
      final result = await dataSource.searchMovie(query: query, page: page);

      return Right(result.map((e) => e.toEntity()).toList());
    } on DioError catch (e) {
      return Left(NetworkExceptions.fromDioError(e));
    }
  }

  @override
  Future<Either<NetworkExceptions, List<Movie>>> searchPerson({required String query, required int page}) {
    // TODO: implement searchPerson
    throw UnimplementedError();
  }
}
