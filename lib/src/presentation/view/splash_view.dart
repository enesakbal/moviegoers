import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:moviegoers/src/config/gen/colors.gen.dart';
import 'package:moviegoers/src/config/router/app_router.dart';

@RoutePage()
class SplashView extends HookWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(
      () {
        Timer(const Duration(seconds: 1), () async {
          await router.push(const HomeRoute());
        });
        return null;
      },
      [],
    );

    return const Scaffold(
      body: Center(
        child: Text(
          'SPLASH',
          style: TextStyle(color: MGColors.blue, fontSize: 30),
        ),
      ),
    );
  }
}
