part of 'search_bloc.dart';

abstract class SearchState extends Equatable {
  const SearchState();
  
  @override
  List<Object> get props => [];
}

class SearchInitial extends SearchState {
  const SearchInitial();
}

class SearchError extends SearchState {
  final String message;

  const SearchError(this.message);

  @override
  List<Object> get props => [message];
}

class SearchLoading extends SearchState {
  const SearchLoading();
}

class SearchEmpty extends SearchState {
  const SearchEmpty();
}

class SearchHasDataMovie extends SearchState {
  final List<Movie> movieList;

  const SearchHasDataMovie(this.movieList);

  @override
  List<Object> get props => [movieList];

  @override
  String toString() => 'SearchHasData()';
}
