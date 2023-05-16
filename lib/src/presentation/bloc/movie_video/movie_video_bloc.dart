import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entities/movie/movie_video/movie_video_detail.dart';
import '../../../domain/usecases/movie_usecase.dart';

part 'movie_video_event.dart';
part 'movie_video_state.dart';

class MovieVideoBloc extends Bloc<MovieVideoEvent, MovieVideoState> {
  final MovieUsecase _usecase;
  bool isFetched = false;

  MovieVideoBloc(this._usecase) : super(const MovieVideoInitial()) {
    late List<MovieVideoDetail?> movieVideoList;

    on<FetchMovieVideos>((event, emit) async {
      if (isFetched) {
        return emit(MovieVideoHasData(movieVideoList));
      }

      emit(const MovieVideoLoading());
      final result = await _usecase.getMovieVideos(movieID: event.movieID);

      result.fold(
        (failure) => emit(MovieVideoError(failure.message)),
        (data) {
          isFetched = true;
          movieVideoList = data.movieVideDetails!
              .map((e) => (e.official! && (e.name == 'YouTube' || e.type == 'Trailer')) ? e : null)
              .where((element) => element != null)
              .toList()
            ..sort(
              (a, b) => a!.publishedAt!.compareTo(b!.publishedAt!),
            );

          emit(MovieVideoHasData(movieVideoList));
        },
      );

      return;
    });
  }
}
