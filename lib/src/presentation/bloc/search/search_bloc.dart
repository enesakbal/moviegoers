import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entities/movie/movie/movie.dart';
import '../../../domain/usecases/search_usecase.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchUsecase _usecase;

  bool loadMore = true;
  final List<Movie> movieList = [];
  int _currentPage = 1;

  void resetData() {
    loadMore = true;
    movieList.clear();
    _currentPage = 1;
  }

  SearchBloc(this._usecase) : super(const SearchInitial()) {
    const totalPages = 60;
//todo(enes) total pages yönet
    on<FetchSearchMovies>((event, emit) async {
      emit(const SearchInitial());
      if (event.resetData){
        resetData();
      }
      if (totalPages == _currentPage) {
        loadMore = false;
        return;
      }

      if (movieList.isEmpty) {
        emit(const SearchLoading());
      }

      final result = await _usecase.searchMovie(query: event.query, page: _currentPage);

      result.fold((failure) {
        emit(SearchError(failure.message));
      }, (data) {
        if (data.isEmpty) {
          return emit(const SearchEmpty());
        }
        _currentPage++;
        movieList.addAll(data.where((element) => !element.adult!));

        emit(SearchHasDataMovie(movieList));

      });
    });
  }
}
