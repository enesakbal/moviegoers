import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/init/network/network_exception.dart';
import '../../domain/entities/movie/movie/movie.dart';
import '../../domain/entities/movie/movie_credit/movie_credit.dart';
import '../../domain/entities/movie/movie_detail/movie_detail.dart';
import '../../domain/entities/movie/movie_external_id/movie_external_id.dart';
import '../../domain/entities/movie/movie_keywords/movie_keywords.dart';
import '../../domain/entities/movie/movie_provider/movie_provider.dart';
import '../../domain/entities/movie/movie_video/movie_video.dart';
import '../../domain/repositories/movie_repository.dart';
import '../datasources/remote/movie/movie_remote_data_source.dart';

class MovieRepositoryImpl extends MovieRepository {
  final MovieRemoteDataSource dataSource;
  MovieRepositoryImpl({required this.dataSource});
  @override
  Future<Either<NetworkExceptions, List<Movie>?>> getPopularMovies({required int page}) async {
    try {
      final result = await dataSource.getPopularMovies(page: page);
      final movieList = result!.map((e) => e.toEntity()).toList();

      return Right(movieList);
    } on DioError catch (e) {
      return Left(NetworkExceptions.fromDioError(e));
    }
  }

  @override
  Future<Either<NetworkExceptions, List<Movie>?>> getNowPlayingMovies({required int page}) async {
    try {
      final result = await dataSource.getNowPlayingMovies(page: page);
      final movieList = result!.map((e) => e.toEntity()).toList();

      return Right(movieList);
    } on DioError catch (e) {
      return Left(NetworkExceptions.fromDioError(e));
    }
  }

  @override
  Future<Either<NetworkExceptions, List<Movie>?>> getUpcomingMovies({required int page}) async {
    try {
      final result = await dataSource.getUpcomingMovies(page: page);
      final movieList = result!.map((e) => e.toEntity()).toList();

      return Right(movieList);
    } on DioError catch (e) {
      return Left(NetworkExceptions.fromDioError(e));
    }
  }

  @override
  Future<Either<NetworkExceptions, List<Movie>?>> getTopRatedMovies({required int page}) async {
    try {
      final result = await dataSource.getTopRatedMovies(page: page);
      final movieList = result!.map((e) => e.toEntity()).toList();

      return Right(movieList);
    } on DioError catch (e) {
      return Left(NetworkExceptions.fromDioError(e));
    }
  }

  @override
  Future<Either<NetworkExceptions, MovieDetail>> getMovieDetails({required String movieID}) async {
    try {
      final result = await dataSource.getMovieDetails(movieID: movieID);
      final detail = result.toEntity();

      return Right(detail);
    } on DioError catch (e) {
      return Left(NetworkExceptions.fromDioError(e));
    }
  }

  @override
  Future<Either<NetworkExceptions, MovieCredit>> getMovieCredits({required String movieID}) async {
    try {
      final result = await dataSource.getMovieCredits(movieID: movieID);
      final credit = result.toEntity();

      return Right(credit);
    } on DioError catch (e) {
      return Left(NetworkExceptions.fromDioError(e));
    }
  }

  @override
  Future<Either<NetworkExceptions, MovieExternalId>> getMovieExternalIDs({required String movieID}) async {
    try {
      final result = await dataSource.getMovieExternalIDs(movieID: movieID);
      final ids = result.toEntity();

      return Right(ids);
    } on DioError catch (e) {
      return Left(NetworkExceptions.fromDioError(e));
    }
  }

  @override
  Future<Either<NetworkExceptions, MovieVideo>> getMovieVideos({required String movieID}) async {
    try {
      final result = await dataSource.getMovieVideos(movieID: movieID);
      final videoData = result.toEntity();

      return Right(videoData);
    } on DioError catch (e) {
      return Left(NetworkExceptions.fromDioError(e));
    }
  }

  @override
  Future<Either<NetworkExceptions, List<Movie>?>> getMovieRecommendations({
    required String movieID,
    required int page,
  }) async {
    try {
      final result = await dataSource.getMovieRecommendations(movieID: movieID, page: page);
      final movieList = result!.map((e) => e.toEntity()).toList();

      return Right(movieList);
    } on DioError catch (e) {
      return Left(NetworkExceptions.fromDioError(e));
    }
  }

  @override
  Future<Either<NetworkExceptions, List<Movie>?>> getMovieSimilars({
    required String movieID,
    required int page,
  }) async {
    try {
      final result = await dataSource.getMovieSimilars(movieID: movieID, page: page);
      final movieList = result!.map((e) => e.toEntity()).toList();

      return Right(movieList);
    } on DioError catch (e) {
      return Left(NetworkExceptions.fromDioError(e));
    }
  }

  @override
  Future<Either<NetworkExceptions, MovieProvider>> getMovieProviders({required String movieID}) async {
    try {
      final result = await dataSource.getMovieProviders(movieID: movieID);
      final providers = result.toEntity();

      return Right(providers);
    } on DioError catch (e) {
      return Left(NetworkExceptions.fromDioError(e));
    }
  }

  @override
  Future<Either<NetworkExceptions, MovieKeywords>> getMovieKeywords({required String movieID}) async {
    try {
      final result = await dataSource.getMovieKeywords(movieID: movieID);
      final keywords = result.toEntity();

      return Right(keywords);
    } on DioError catch (e) {
      return Left(NetworkExceptions.fromDioError(e));
    }
  }
}
