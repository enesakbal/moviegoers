import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/init/network/network_exception.dart';
import '../../../../domain/entities/movie/movie/movie.dart';
import '../../../../domain/entities/movie/movie_list/base/movie_interface.dart';
import '../../../../domain/usecases/movie_usecase.dart';
import '../blocs.dart';

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
    if (this is PopularMoviesBloc) {
      result = await _usecase.getPopularMovies(page: event.page);
    } else if (this is UpcomingMoviesBloc) {
      result = await _usecase.getUpcomingMovies(page: event.page);
    } else if (this is NowPlayingMoviesBloc) {
      result = await _usecase.getNowPlayingMovies(page: event.page);
    }

    result.fold(
      (failure) => emit(BaseMoviesError(message: failure.message)),
      (data) => emit(BaseMoviesHasData(
        data.movies!.take(6).toList(),
      )),
    );
  }
}
