part of 'base_movies_bloc.dart';

abstract class BaseMoviesEvent extends Equatable {
  const BaseMoviesEvent();

  @override
  List<Object> get props => [];
}

class FetchBaseMovies extends BaseMoviesEvent {
  final int page;
  final String? movieID;

  const FetchBaseMovies({required this.page, this.movieID});
}
