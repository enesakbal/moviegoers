import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'src/config/gen/colors.gen.dart';
import 'src/config/observers/bloc_observer.dart';
import 'src/config/router/app_router.dart';
import 'src/core/init/language/language_manager.dart';
import 'src/core/theme/app_theme.dart';
import 'src/injector.dart' as di;
import 'src/presentation/bloc/blocs.dart';
import 'src/presentation/bloc/movie_listings/movie_listings_bloc.dart';
import 'src/presentation/bloc/search/search_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await dotenv.load(fileName: '.env.development');

  await di.init();

  Bloc.observer = GlobalBlocObserver();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  MaterialApp _materialApp(BuildContext context) {
    return MaterialApp.router(
      theme: MGAppTheme().theme,
      routerDelegate: AutoRouterDelegate(
        router,
        navigatorObservers: () => [NavigatorObserver()],
      ),
      routeInformationParser: router.defaultRouteParser(),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      localeResolutionCallback: LanguageManager.localeResolutionCallback,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
          child: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.light,
            child: ColoredBox(
              color: MGColors.dark,
              child: SafeArea(
                bottom: false,
                // right: false,
                // left: false,
                child: child!,
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return _blocProvider(context);
  }

  Widget _blocProvider(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (_) => di.injector<PopularMoviesBloc>()),
      BlocProvider(create: (_) => di.injector<UpcomingMoviesBloc>()),
      BlocProvider(create: (_) => di.injector<NowPlayingMoviesBloc>()),
      BlocProvider(create: (_) => di.injector<TopRatedMoviesBloc>()),
      BlocProvider(create: (_) => di.injector<MovieCreditBloc>()),
      BlocProvider(create: (_) => di.injector<MovieListingsBloc>()),
      BlocProvider(create: (_) => di.injector<SearchBloc>()),
    ], child: _localization(context));
  }

  EasyLocalization _localization(BuildContext context) {
    return EasyLocalization(
      path: 'languages',
      supportedLocales: LanguageManager().supportedLocales,
      child: _screenUtil(context),
    );
  }

  ScreenUtilInit _screenUtil(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: (context, child) => _materialApp(context),
    );
  }
}
