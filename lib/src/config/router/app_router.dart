import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../presentation/view/_project_components_view.dart';
import '../../presentation/view/home_view.dart';
import '../../presentation/view/movie_detail_view.dart';
import '../../presentation/view/splash_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    RedirectRoute(path: '/', redirectTo: '/home'),
    AutoRoute(page: SplashRoute.page, path: '/splash'),
    CustomRoute(
      page: HomeRoute.page,
      path: '/home',
      durationInMilliseconds: 500,
      transitionsBuilder: TransitionsBuilders.zoomIn,
    ),
    CustomRoute(
      page: MovieDetailRoute.page,
      path: '/movie_detail',
      durationInMilliseconds: 500,
      reverseDurationInMilliseconds: 500,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    AutoRoute(page: ProjectComponentsRoute.page, path: '/components'),
  ];
}

Widget zoomInTransition(
    BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
  final opacity = Tween<double>(
    end: 1,
    begin: 0,
  ).chain(CurveTween(curve: Curves.fastOutSlowIn)).animate(animation);

  final scale = Tween<double>(
    end: 1,
    begin: 1.20,
  ).chain(CurveTween(curve: Curves.fastOutSlowIn)).animate(animation);

  return FadeTransition(
    opacity: opacity,
    child: ScaleTransition(
      scale: scale,
      child: child,
    ),
  );
}

final router = AppRouter();
