import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entities/movie/movie_keywords/keyword.dart';
import '../../../domain/usecases/movie_usecase.dart';

part 'movie_keywords_event.dart';
part 'movie_keywords_state.dart';

class MovieKeywordsBloc extends Bloc<MovieKeywordsEvent, MovieKeywordsState> {
  final MovieUsecase _movieUsecase;

  MovieKeywordsBloc(this._movieUsecase) : super(const MovieKeywordsInitial()) {
    on<FetchMovieKeywords>((event, emit) async {
      emit(const MovieKeywordsLoading());

      final result = await _movieUsecase.getMovieKeywords(movieID: event.movieID);

      result.fold(
        (failure) => emit(MovieKeywordsError(failure.message)),
        (data) => emit(MovieKeywordsHasData(data.keywords!)),
      );
    });
  }
}
