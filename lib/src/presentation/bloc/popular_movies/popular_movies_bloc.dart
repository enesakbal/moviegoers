import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entities/movie/movie/movie.dart';
import '../../../domain/usecases/movie_usecase.dart';

part 'popular_movies_event.dart';
part 'popular_movies_state.dart';

class PopularMoviesBloc extends Bloc<PopularMoviesEvent, PopularMoviesState> {
  final MovieUsecase _usecase;
  PopularMoviesBloc(this._usecase) : super(const PopularMoviesInitial()) {
    on<FetchPopularMovies>(newMethod);
  }

  FutureOr<void> newMethod(PopularMoviesEvent event, Emitter<PopularMoviesState> emit) async {
    emit(const PopularMoviesLoading());
    final result = await _usecase.getPopularMovies(page: 1);

    result.fold((failure) => emit(const PopularMoviesError(message: '')), (data) {
      emit(PopularMoviesHasData(data.movies!));
    });
  }
}
