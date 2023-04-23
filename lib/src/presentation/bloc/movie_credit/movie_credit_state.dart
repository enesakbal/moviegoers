part of 'movie_credit_bloc.dart';

abstract class MovieCreditState extends Equatable {
  const MovieCreditState();

  @override
  List<Object> get props => [];
}

class MovieCreditInitial extends MovieCreditState {
  const MovieCreditInitial();
}

class MovieCreditError extends MovieCreditState {
  final String message;

  const MovieCreditError(this.message);

  @override
  List<Object> get props => [message];
}

class MovieCreditLoading extends MovieCreditState {
  const MovieCreditLoading();
}

class MovieCreditHasData extends MovieCreditState {
  final MovieCredit movieCredit;

  const MovieCreditHasData(this.movieCredit);

  @override
  List<Object> get props => [movieCredit];

    @override
  String toString() => 'MovieCreditHasData()';
}
