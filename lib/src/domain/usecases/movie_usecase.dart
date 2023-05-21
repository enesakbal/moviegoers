// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import '../../core/init/network/network_exception.dart';
import '../entities/movie/movie_credit/movie_credit.dart';
import '../entities/movie/movie_detail/movie_detail.dart';
import '../entities/movie/movie_external_id/movie_external_id.dart';
import '../entities/movie/movie_list/base/movie_interface.dart';
import '../entities/movie/movie_list/recommendation_movies.dart';
import '../entities/movie/movie_list/similiar_movies.dart';
import '../entities/movie/movie_provider/movie_provider.dart';
import '../entities/movie/movie_video/movie_video.dart';
import '../repositories/movie_repository.dart';

class MovieUsecase {
  final MovieRepository repository;
  MovieUsecase({required this.repository});

  Future<Either<NetworkExceptions, MovieI>> getPopularMovies({required int page}) {
    return repository.getPopularMovies(page: page);
  }

  Future<Either<NetworkExceptions, MovieI>> getNowPlayingMovies({required int page}) {
    return repository.getNowPlayingMovies(page: page);
  }

  Future<Either<NetworkExceptions, MovieI>> getUpcomingMovies({required int page}) {
    return repository.getUpcomingMovies(page: page);
  }

  Future<Either<NetworkExceptions, MovieI>> getTopRatedMovies({required int page}) {
    return repository.getTopRatedMovies(page: page);
  }

  Future<Either<NetworkExceptions, MovieDetail>> getMovieDetails({required String movieID}) {
    return repository.getMovieDetails(movieID: movieID);
  }

  Future<Either<NetworkExceptions, MovieCredit>> getMovieCredits({required String movieID}) {
    return repository.getMovieCredits(movieID: movieID);
  }

  Future<Either<NetworkExceptions, MovieExternalId>> getMovieExternalIDs({required String movieID}) {
    return repository.getMovieExternalIDs(movieID: movieID);
  }

  Future<Either<NetworkExceptions, MovieVideo>> getMovieVideos({required String movieID}) {
    return repository.getMovieVideos(movieID: movieID);
  }

  Future<Either<NetworkExceptions, RecommendationMovies>> getMovieRecommendations({
    required String movieID,
    required int page,
  }) {
    return repository.getMovieRecommendations(movieID: movieID, page: page);
  }

  Future<Either<NetworkExceptions, SimiliarMovies>> getMovieSimilars({required String movieID, required int page}) {
    return repository.getMovieSimilars(movieID: movieID, page: page);
  }

  Future<Either<NetworkExceptions, MovieProvider>> getMovieProviders({required String movieID}) {
    return repository.getMovieProviders(movieID: movieID);
  }

  //  Future<Either<NetworkExceptions, MovieExternalId>> rateMovie({required String movieID}) {
  //   return repository.rateMovie(movieID: movieID);
  // }

  // Future<Either<NetworkExceptions, MovieVideo>> deleteRateMovie({required String movieID}) {
  //   return repository.deleteRateMovie(movieID: movieID);
  // }
}
