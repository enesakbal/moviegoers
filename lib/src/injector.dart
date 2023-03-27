import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'core/init/language/language_manager.dart';
import 'core/init/network/dio_client.dart';

final injector = GetIt.instance;

Future<void> init() async {
  injector

    //* Network
    ..registerLazySingleton<DioClient>(() => DioClient(Dio()))

    //* Language
    ..registerLazySingleton<LanguageManager>(LanguageManager.new);
}
