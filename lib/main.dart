import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moviegoers/src/config/router/app_router.dart';
import 'package:moviegoers/src/config/router/navigator_observers.dart';
import 'package:moviegoers/src/core/theme/app_theme.dart';
import 'package:moviegoers/src/injector.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await dotenv.load(fileName: '.env.development');

  await di.init();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  MaterialApp _materialApp(BuildContext context) {
    return MaterialApp.router(
      theme: MGAppTheme().theme,
      routerDelegate: AutoRouterDelegate(
        router,
        navigatorObservers: () => [observer],
      ),
      routeInformationParser: router.defaultRouteParser(),
      debugShowCheckedModeBanner: false,
      // localizationsDelegates: context.localizationDelegates,
      // locale: context.locale,
      // localeResolutionCallback: LanguageManager.localeResolutionCallback,
      //todo
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
          child: child!,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return _blocProvider(context);
  }

  Widget _blocProvider(BuildContext context) {
    // return MultiBlocProvider(
    //   providers: const [],
    //   child:
    // );
    // return _localization(context);
    //todo
    return _screenUtil(context);
  }

  // EasyLocalization _localization(BuildContext context) {
  //   return EasyLocalization(
  //     path: 'languages/',
  //     supportedLocales: LanguageManager().supportedLocales,
  //     child: _screenUtil(context),
  //   );
  // }
  //todo

  ScreenUtilInit _screenUtil(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: (context, child) => _materialApp(context),
    );
  }
}
