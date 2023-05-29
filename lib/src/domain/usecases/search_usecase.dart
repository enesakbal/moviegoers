import 'package:dartz/dartz.dart';

import '../../core/init/network/network_exception.dart';
import '../entities/movie/movie/movie.dart';
import '../repositories/search_repository.dart';

class SearchUsecase {
  final SearchRepository repository;

  SearchUsecase({required this.repository});

  Future<Either<NetworkExceptions, List<Movie>>> searchMovie({required String query, required int page}) {
    return repository.searchMovie(query: query, page: page);
  }

  Future<Either<NetworkExceptions, List<Movie>>> searchPerson({required String query, required int page}) {
    return repository.searchPerson(query: query, page: page);
  }
}
