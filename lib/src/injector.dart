import 'package:get_it/get_it.dart';

import 'package:moviegoers/src/core/init/language/language_manager.dart';

final injector = GetIt.instance;

Future<void> init() async {
  injector

      //* Language
      .registerLazySingleton<LanguageManager>(LanguageManager.new);
}
