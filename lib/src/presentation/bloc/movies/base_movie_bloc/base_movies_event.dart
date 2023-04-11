part of 'base_movies_bloc.dart';

abstract class BaseMoviesEvent extends Equatable {
  const BaseMoviesEvent();

  @override
  List<Object> get props => [];
}

class FetchMovies extends BaseMoviesEvent {
  final int page;

  const FetchMovies({required this.page});
}
