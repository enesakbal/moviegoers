import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'core/init/language/language_manager.dart';
import 'core/init/network/dio_client.dart';
import 'data/datasources/remote/movie/movie_remote_data_source.dart';
import 'data/datasources/remote/movie/movie_remote_data_source_impl.dart';
import 'data/datasources/remote/search/search_remote_data_source.dart';
import 'data/datasources/remote/search/search_remote_data_source_impl.dart';
import 'data/repositories/movie_repository_impl.dart';
import 'data/repositories/search_repository_impl.dart';
import 'domain/repositories/movie_repository.dart';
import 'domain/repositories/search_repository.dart';
import 'domain/usecases/movie_usecase.dart';
import 'domain/usecases/search_usecase.dart';
import 'presentation/bloc/blocs.dart';
import 'presentation/bloc/movie_keywords/movie_keywords_bloc.dart';
import 'presentation/bloc/movie_listings/movie_listings_bloc.dart';
import 'presentation/bloc/movie_provider/movie_provider_bloc.dart';
import 'presentation/bloc/movie_video/movie_video_bloc.dart';
import 'presentation/bloc/search/search_bloc.dart';

final injector = GetIt.instance;

Future<void> init() async {
  injector

    //* Network
    ..registerLazySingleton<DioClient>(() => DioClient(Dio()))

    //* Language
    ..registerLazySingleton<LanguageManager>(LanguageManager.new)

    //* Datasources
    ..registerLazySingleton<MovieRemoteDataSource>(() => MovieRemoteDataSourceImpl(dioClient: injector()))
    ..registerLazySingleton<SearchRemoteDataSource>(() => SearchRemoteDataSourceImpl(dioClient: injector()))

    //* Repository
    ..registerLazySingleton<MovieRepository>(() => MovieRepositoryImpl(dataSource: injector()))
    ..registerLazySingleton<SearchRepository>(() => SearchRepositoryImpl(dataSource: injector()))

    //* Usecase
    ..registerLazySingleton(() => MovieUsecase(repository: injector()))
    ..registerLazySingleton(() => SearchUsecase(repository: injector()))

    //* BLoC

    ..registerFactory<UpcomingMoviesBloc>(() => UpcomingMoviesBloc(injector()))
    ..registerFactory<PopularMoviesBloc>(() => PopularMoviesBloc(injector()))
    ..registerFactory<NowPlayingMoviesBloc>(() => NowPlayingMoviesBloc(injector()))
    ..registerFactory<TopRatedMoviesBloc>(() => TopRatedMoviesBloc(injector()))
    ..registerFactory<RecommendationMoviesBloc>(() => RecommendationMoviesBloc(injector()))
    ..registerFactory<SimiliarMoviesBloc>(() => SimiliarMoviesBloc(injector()))
    ..registerFactory<MovieDetailBloc>(() => MovieDetailBloc(injector()))
    ..registerFactory<MovieCreditBloc>(() => MovieCreditBloc(injector()))
    ..registerFactory<MovieProviderBloc>(() => MovieProviderBloc(injector()))
    ..registerFactory<MovieVideoBloc>(() => MovieVideoBloc(injector()))
    ..registerFactory<MovieListingsBloc>(() => MovieListingsBloc(injector()))
    ..registerFactory<MovieKeywordsBloc>(() => MovieKeywordsBloc(injector()))
    ..registerFactory<SearchBloc>(() => SearchBloc(injector()));
}
