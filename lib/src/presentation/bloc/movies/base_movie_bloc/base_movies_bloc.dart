import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/init/network/network_exception.dart';
import '../../../../domain/entities/movie/movie/movie.dart';
import '../../../../domain/entities/movie/movie_list/base/base_movie_listings.dart';
import '../../../../domain/usecases/movie_usecase.dart';
import '../../blocs.dart';

part 'base_movies_event.dart';
part 'base_movies_state.dart';

abstract class BaseMoviesBloc extends Bloc<BaseMoviesEvent, BaseMoviesState> {
  final MovieUsecase _usecase;

  BaseMoviesBloc(this._usecase) : super(const BaseMoviesInitial()) {
    bool didFetch = false;

    on<FetchBaseMovies>(
      (event, emit) async {
        if (didFetch) {
          return;
        }
        emit(const BaseMoviesLoading());
        late Either<NetworkExceptions, BaseMovieListings> result;
        if (this is PopularMoviesBloc) {
          result = await _usecase.getPopularMovies(page: event.page);
        } else if (this is UpcomingMoviesBloc) {
          result = await _usecase.getUpcomingMovies(page: event.page);
        } else if (this is NowPlayingMoviesBloc) {
          result = await _usecase.getNowPlayingMovies(page: event.page);
        } else if (this is TopRatedMoviesBloc) {
          result = await _usecase.getTopRatedMovies(page: event.page);
        } else if (this is RecommendationMoviesBloc) {
          assert(event.movieID != null, 'MOVIEID CANT BE NULL');
          result = await _usecase.getMovieRecommendations(movieID: event.movieID!, page: event.page);
        } else if (this is SimiliarMoviesBloc) {
          assert(event.movieID != null, 'MOVIEID CANT BE NULL');
          result = await _usecase.getMovieSimilars(movieID: event.movieID!, page: event.page);
        } else {
          emit(const BaseMoviesError(message: 'Something went wrong'));
          return;
        }

        result.fold(
          (failure) => emit(BaseMoviesError(message: failure.message)),
          (data) {
            didFetch = true;
            if (data.movies!.isEmpty) {
              emit(const BaseMoviesEmpty(message: 'There is no data'));
            } else {
              emit(BaseMoviesHasData(data.movies!.take(4).toList()));
            }
          },
        );
      },
    );
  }
}
