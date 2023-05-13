import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'core/init/language/language_manager.dart';
import 'core/init/network/dio_client.dart';
import 'data/datasources/remote/movie/movie_remote_data_source.dart';
import 'data/datasources/remote/movie/movie_remote_data_source_impl.dart';
import 'data/repositories/movie_repository_impl.dart';
import 'domain/repositories/movie_repository.dart';
import 'domain/usecases/movie_usecase.dart';
import 'presentation/bloc/blocs.dart';
import 'presentation/bloc/movie_provider/movie_provider_bloc.dart';

final injector = GetIt.instance;

Future<void> init() async {
  injector

    //* Network
    ..registerLazySingleton<DioClient>(() => DioClient(Dio()))

    //* Language
    ..registerLazySingleton<LanguageManager>(LanguageManager.new)

    //* Datasources
    ..registerLazySingleton<MovieRemoteDataSource>(() => MovieRemoteDataSourceImpl(dioClient: injector()))

    //* Repository
    ..registerLazySingleton<MovieRepository>(() => MovieRepositoryImpl(dataSource: injector()))

    //* Usecase
    ..registerLazySingleton(() => MovieUsecase(repository: injector()))

    //* BLoC

    ..registerFactory<UpcomingMoviesBloc>(() => UpcomingMoviesBloc(injector()))
    ..registerFactory<PopularMoviesBloc>(() => PopularMoviesBloc(injector()))
    ..registerFactory<NowPlayingMoviesBloc>(() => NowPlayingMoviesBloc(injector()))
    ..registerFactory<RecommendationMoviesBloc>(() => RecommendationMoviesBloc(injector()))
    ..registerFactory<SimiliarMoviesBloc>(() => SimiliarMoviesBloc(injector()))
    ..registerFactory<MovieDetailBloc>(() => MovieDetailBloc(injector()))
    ..registerFactory<MovieCreditBloc>(() => MovieCreditBloc(injector()))
    ..registerFactory<MovieProviderBloc>(() => MovieProviderBloc(injector()));
}
