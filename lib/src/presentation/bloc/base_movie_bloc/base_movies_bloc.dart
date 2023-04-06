import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../core/constants/enum/movie_enum.dart';
import '../../../core/init/network/network_exception.dart';
import '../../../domain/entities/movie/movie/movie.dart';
import '../../../domain/entities/movie/movie_list/base/movie_interface.dart';
import '../../../domain/usecases/movie_usecase.dart';

part 'base_movies_event.dart';
part 'base_movies_state.dart';

abstract class BaseMoviesBloc extends Bloc<BaseMoviesEvent, BaseMoviesState> {
  final MovieUsecase _usecase;

  BaseMoviesBloc(this._usecase) : super(const BaseMoviesInitial()) {
    on<FetchMovies>(fetchMovie);
  }

  FutureOr<void> fetchMovie(FetchMovies event, Emitter<BaseMoviesState> emit) async {
    emit(const BaseMoviesLoading());

    late Either<NetworkExceptions, MovieI> result;
    switch (event.type) {
      case MovieTypes.POPULAR:
        result = await _usecase.getPopularMovies(page: event.page);
        break;
      case MovieTypes.UPCOMING:
        result = await _usecase.getUpcomingMovies(page: event.page);
        break;
      case MovieTypes.NOWPLAYING:
        result = await _usecase.getUpcomingMovies(page: event.page);
        break;
    }

    result.fold(
      (failure) => emit(BaseMoviesError(message: failure.message)),
      (data) => emit(BaseMoviesHasData(data.movies!)),
    );
  }
}
