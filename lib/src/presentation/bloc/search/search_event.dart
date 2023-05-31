part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  List<Object> get props => [];
}

class FetchSearchMovies extends SearchEvent {
  final String query;
  final bool resetData;

  const FetchSearchMovies(this.query,{required this.resetData});

  @override
  List<Object> get props => [query,resetData];
}
