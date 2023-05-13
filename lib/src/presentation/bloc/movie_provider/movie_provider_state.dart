part of 'movie_provider_bloc.dart';

abstract class MovieProviderState extends Equatable {
  const MovieProviderState();

  @override
  List<Object> get props => [];
}

class MovieProviderInitial extends MovieProviderState {
  const MovieProviderInitial();
}

class MovieProviderError extends MovieProviderState {
  final String message;

  const MovieProviderError(this.message);

  @override
  List<Object> get props => [message];
}

class MovieProviderLoading extends MovieProviderState {
  const MovieProviderLoading();
}

class MovieProviderEmpty extends MovieProviderState {
  final String message;

  const MovieProviderEmpty({this.message = 'There is no provider'});

  @override
  List<Object> get props => [message];
}

class MovieProviderHasData extends MovieProviderState {
  final ICountry movieProvider;

  const MovieProviderHasData(this.movieProvider);

  @override
  List<Object> get props => [movieProvider];

  @override
  String toString() => 'MovieProviderHasData()';
}
