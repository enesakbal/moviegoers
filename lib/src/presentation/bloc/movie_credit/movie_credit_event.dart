part of 'movie_credit_bloc.dart';

abstract class MovieCreditEvent extends Equatable {
  const MovieCreditEvent();

  @override
  List<Object> get props => [];
}

class FetchMovieCredit extends MovieCreditEvent {
  final String movieID;

  const FetchMovieCredit(this.movieID);

  @override
  List<Object> get props => [movieID];
}
