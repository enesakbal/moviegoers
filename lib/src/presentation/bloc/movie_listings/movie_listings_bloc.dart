import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../core/constants/enum/movie_enum.dart';
import '../../../core/init/network/network_exception.dart';
import '../../../domain/entities/movie/movie/movie.dart';
import '../../../domain/entities/movie/movie_list/base/base_movie_listings.dart';
import '../../../domain/usecases/movie_usecase.dart';

part 'movie_listings_event.dart';
part 'movie_listings_state.dart';

class MovieListingsBloc extends Bloc<MovieListingsEvent, MovieListingsState> {
  final MovieUsecase _usecase;
  bool loadMore = true;
  final List<Movie> movieList = [];
  int _currentPage = 0;
  int _totalPages = -1;

  void resetData() {
    loadMore = true;
    movieList.clear();
    _currentPage = 0;
    _totalPages = -1;
  }

  MovieListingsBloc(this._usecase) : super(const MovieListingsInitial()) {
    Either<NetworkExceptions, BaseMovieListings> result;

    on<FetchMovies>((event, emit) async {
      emit(const MovieListingsInitial());
      if (_totalPages == _currentPage) {
        loadMore = false;
        return;
      }

      _currentPage++;

      if (movieList.isEmpty) {
        emit(const MovieListingsLoading());
      }

      await Future.delayed(const Duration(milliseconds: 500));

      switch (event.type) {
        case MovieListTypes.POPULAR:
          result = await _usecase.getPopularMovies(page: _currentPage);
          break;
        case MovieListTypes.NOWPLAYING:
          result = await _usecase.getNowPlayingMovies(page: _currentPage);
          break;
        case MovieListTypes.UPCOMING:
          result = await _usecase.getUpcomingMovies(page: _currentPage);
          break;
        case MovieListTypes.TOPRATED:
          result = await _usecase.getTopRatedMovies(page: _currentPage);
          break;
        case MovieListTypes.RECOMMENDED:
          assert(event.movieID != null, 'MOVIEID CANT BE NULL');
          result = await _usecase.getMovieRecommendations(movieID: event.movieID!, page: _currentPage);
          break;
        case MovieListTypes.SIMILIAR:
          assert(event.movieID != null, 'MOVIEID CANT BE NULL');
          result = await _usecase.getMovieSimilars(movieID: event.movieID!, page: _currentPage);
          break;
      }

      result.fold((failure) {
        return emit(MovieListingsError(message: failure.message));
      }, (data) async {
        if (_totalPages == -1) {
          if (data.totalPages! > 500) {
            _totalPages = 500;
          } else {
            _totalPages = data.totalPages!;
          }
        }

        movieList.addAll(data.movies!.where((element) => !element.adult! && !movieList.contains(element)));

        emit(MovieListingsHasData(movieList));
      });
    });
  }
}
