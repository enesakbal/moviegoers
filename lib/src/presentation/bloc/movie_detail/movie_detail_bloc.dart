import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entities/movie/movie_detail/movie_detail.dart';
import '../../../domain/usecases/movie_usecase.dart';

part 'movie_detail_event.dart';
part 'movie_detail_state.dart';

class MovieDetailBloc extends Bloc<MovieDetailEvent, MovieDetailState> {
  final MovieUsecase _usecase;

  MovieDetailBloc(this._usecase) : super(const MovieDetailInitial()) {
    on<FetchMovieDetail>((event, emit) async {
      emit(const MovieDetailLoading());
      final result = await _usecase.getMovieDetails(movieID: event.movieID);

      result.fold(
        (failure) => emit(MovieDetailError(failure.message)),
        (data) => emit(MovieDetailHasData(data)),
      );

      return;
    });
  }
}
