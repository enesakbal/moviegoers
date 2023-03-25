import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:moviegoers/src/core/init/language/language_manager.dart';
import 'package:moviegoers/src/core/init/network/dio_client.dart';

final injector = GetIt.instance;

Future<void> init() async {
  injector

    //* Network
    ..registerLazySingleton<DioClient>(() => DioClient(Dio()))

    //* Language
    ..registerLazySingleton<LanguageManager>(LanguageManager.new);
}
