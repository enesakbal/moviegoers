import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entities/movie/movie_credit/movie_credit.dart';
import '../../../domain/usecases/movie_usecase.dart';

part 'movie_credit_event.dart';
part 'movie_credit_state.dart';

class MovieCreditBloc extends Bloc<MovieCreditEvent, MovieCreditState> {
  final MovieUsecase _usecase;
  MovieCreditBloc(this._usecase) : super(const MovieCreditInitial()) {
    on<FetchMovieCredit>((event, emit) async {
      emit(const MovieCreditLoading());
      final result = await _usecase.getMovieCredits(movieID: event.movieID);

      result.fold(
        (failure) => emit(MovieCreditError(failure.message)),
        (data) => emit(MovieCreditHasData(data)),
      );

      return;
    });
  }
}
