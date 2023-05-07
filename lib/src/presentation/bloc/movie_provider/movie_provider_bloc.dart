// ignore_for_file: curly_braces_in_flow_control_structures, always_put_control_body_on_new_line

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entities/movie_provider/country/_interface.dart';
import '../../../domain/entities/movie_provider/results_entity.dart';
import '../../../domain/usecases/movie_usecase.dart';

part 'movie_provider_event.dart';
part 'movie_provider_state.dart';

class MovieProviderBloc extends Bloc<MovieProviderEvent, MovieProviderState> {
  final MovieUsecase _usecase;

  MovieProviderBloc(this._usecase) : super(const MovieProviderInitial()) {
    late ResultsEntity resultsEntity;

    on<FetchMovieProvider>((event, emit) async {
      emit(const MovieProviderLoading());

      final result = await _usecase.getMovieProviders(movieID: event.movieID);

      result.fold(
        (failure) => emit(MovieProviderError(failure.message)),
        (data) {
          resultsEntity = data.results!;

          if (data.results!.tr == null) {
            return emit(const MovieProviderEmpty('message'));
          }

          emit(MovieProviderHasData(data.results!.tr!));
        },
      );

      return;
    });

    on<SwitchCountry>((event, emit) {
      switch (event.countryCode) {
        case 'ca':
          if (resultsEntity.ca == null) return emit(const MovieProviderEmpty('message'));
          return emit(MovieProviderHasData(resultsEntity.ca!));
        case 'de':
          if (resultsEntity.de == null) return emit(const MovieProviderEmpty('message'));
          return emit(MovieProviderHasData(resultsEntity.de!));
        case 'es':
          if (resultsEntity.es == null) return emit(const MovieProviderEmpty('message'));
          return emit(MovieProviderHasData(resultsEntity.es!));
        case 'tr':
          if (resultsEntity.tr == null) return emit(const MovieProviderEmpty('message'));
          return emit(MovieProviderHasData(resultsEntity.tr!));
        case 'fr':
          if (resultsEntity.fr == null) return emit(const MovieProviderEmpty('message'));
          return emit(MovieProviderHasData(resultsEntity.fr!));
        case 'gb':
          if (resultsEntity.gb == null) return emit(const MovieProviderEmpty('message'));
          return emit(MovieProviderHasData(resultsEntity.gb!));
        case 'ind':
          if (resultsEntity.ind == null) return emit(const MovieProviderEmpty('message'));
          return emit(MovieProviderHasData(resultsEntity.ind!));
        case 'it':
          if (resultsEntity.it == null) return emit(const MovieProviderEmpty('message'));
          return emit(MovieProviderHasData(resultsEntity.it!));
        case 'jp':
          if (resultsEntity.jp == null) return emit(const MovieProviderEmpty('message'));
          return emit(MovieProviderHasData(resultsEntity.jp!));
        case 'kr':
          if (resultsEntity.kr == null) return emit(const MovieProviderEmpty('message'));
          return emit(MovieProviderHasData(resultsEntity.kr!));
        case 'ru':
          if (resultsEntity.ru == null) return emit(const MovieProviderEmpty('message'));
          return emit(MovieProviderHasData(resultsEntity.ru!));
        case 'us':
          if (resultsEntity.us == null) return emit(const MovieProviderEmpty('message'));
          return emit(MovieProviderHasData(resultsEntity.us!));

        default:
      }
    });
  }
}
