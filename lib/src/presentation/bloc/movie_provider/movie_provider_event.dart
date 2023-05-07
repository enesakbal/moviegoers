part of 'movie_provider_bloc.dart';

abstract class MovieProviderEvent extends Equatable {
  const MovieProviderEvent();

  @override
  List<Object> get props => [];
}

class FetchMovieProvider extends MovieProviderEvent {
  final String movieID;

  const FetchMovieProvider(this.movieID);

  @override
  List<Object> get props => [movieID];
}

class SwitchCountry extends MovieProviderEvent {
  final String countryCode;

  const SwitchCountry(this.countryCode);

  @override
  List<Object> get props => [countryCode];
}
