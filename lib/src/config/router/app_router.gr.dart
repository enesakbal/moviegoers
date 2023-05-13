// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    MovieBlocProviderRoute.name: (routeData) {
      final args = routeData.argsAs<MovieBlocProviderRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MovieBlocProviderWidget(
          key: args.key,
          movieID: args.movieID,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeView(),
      );
    },
    ProjectComponentsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProjectComponentsView(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashView(),
      );
    },
  };
}

/// generated route for
/// [MovieBlocProviderWidget]
class MovieBlocProviderRoute extends PageRouteInfo<MovieBlocProviderRouteArgs> {
  MovieBlocProviderRoute({
    Key? key,
    required String movieID,
    List<PageRouteInfo>? children,
  }) : super(
          MovieBlocProviderRoute.name,
          args: MovieBlocProviderRouteArgs(
            key: key,
            movieID: movieID,
          ),
          initialChildren: children,
        );

  static const String name = 'MovieBlocProviderRoute';

  static const PageInfo<MovieBlocProviderRouteArgs> page =
      PageInfo<MovieBlocProviderRouteArgs>(name);
}

class MovieBlocProviderRouteArgs {
  const MovieBlocProviderRouteArgs({
    this.key,
    required this.movieID,
  });

  final Key? key;

  final String movieID;

  @override
  String toString() {
    return 'MovieBlocProviderRouteArgs{key: $key, movieID: $movieID}';
  }
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProjectComponentsView]
class ProjectComponentsRoute extends PageRouteInfo<void> {
  const ProjectComponentsRoute({List<PageRouteInfo>? children})
      : super(
          ProjectComponentsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProjectComponentsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashView]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
