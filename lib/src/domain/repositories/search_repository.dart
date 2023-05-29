import 'package:dartz/dartz.dart';

import '../../core/init/network/network_exception.dart';
import '../entities/movie/movie/movie.dart';

abstract class SearchRepository {
  Future<Either<NetworkExceptions, List<Movie>>> searchMovie({required String query, required int page});

  Future<Either<NetworkExceptions, List<Movie>>> searchPerson({required String query, required int page});
}
