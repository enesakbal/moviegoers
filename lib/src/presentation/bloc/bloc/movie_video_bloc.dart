import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entities/movie/movie_video/movie_video.dart';
import '../../../domain/usecases/movie_usecase.dart';

part 'movie_video_event.dart';
part 'movie_video_state.dart';

class MovieVideoBloc extends Bloc<MovieVideoEvent, MovieVideoState> {
  final MovieUsecase _usecase;
  bool isFetched = false;

  MovieVideoBloc(this._usecase) : super(const MovieVideoInitial()) {
    late MovieVideo movieVideo;

    on<FetchMovieVideos>((event, emit) async {
      if (isFetched) {
        return emit(MovieVideoHasData(movieVideo));
      }
      
      emit(const MovieVideoLoading());
      final result = await _usecase.getMovieVideos(movieID: event.movieID);

      result.fold(
        (failure) => emit(MovieVideoError(failure.message)),
        (data) {
          isFetched = true;
          movieVideo = data;
          emit(MovieVideoHasData(data));
        },
      );

      return;
    });
  }
}
