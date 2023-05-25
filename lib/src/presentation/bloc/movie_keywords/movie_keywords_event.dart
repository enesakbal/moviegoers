part of 'movie_keywords_bloc.dart';

abstract class MovieKeywordsEvent extends Equatable {
  const MovieKeywordsEvent();

  @override
  List<Object> get props => [];
}

class FetchMovieKeywords extends MovieKeywordsEvent {
  final String movieID;

  const FetchMovieKeywords(this.movieID);

  @override
  List<Object> get props => [movieID];
}
