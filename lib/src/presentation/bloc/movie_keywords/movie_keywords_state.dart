part of 'movie_keywords_bloc.dart';

abstract class MovieKeywordsState extends Equatable {
  const MovieKeywordsState();

  @override
  List<Object> get props => [];
}

class MovieKeywordsInitial extends MovieKeywordsState {
  const MovieKeywordsInitial();
}

class MovieKeywordsError extends MovieKeywordsState {
  final String message;

  const MovieKeywordsError(this.message);

  @override
  List<Object> get props => [message];
}

class MovieKeywordsLoading extends MovieKeywordsState {
  const MovieKeywordsLoading();
}

class MovieKeywordsHasData extends MovieKeywordsState {
  final List<Keyword?> keywordsList;

  const MovieKeywordsHasData(this.keywordsList);

  @override
  List<Object> get props => [keywordsList];

  @override
  String toString() => 'MovieKeywordsHasData()';
}


