import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:moviegoers/src/presentation/view/splash_view.dart';

import '../../presentation/view/home_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    RedirectRoute(path: '/', redirectTo: '/splash'),
    AutoRoute(page: SplashRoute.page, path: '/splash'),
    AutoRoute(page: HomeRoute.page, path: '/home'),
  ];
}

final router = AppRouter();
