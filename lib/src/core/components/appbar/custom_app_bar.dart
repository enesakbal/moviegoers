import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../config/gen/assets.gen.dart';
import '../../../config/gen/colors.gen.dart';
import '../../../config/router/app_router.dart';

class SliverBaseAppBar extends StatelessWidget {
  const SliverBaseAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: const Text('MovieGoers'),
      elevation: 12,
      automaticallyImplyLeading: false,
      toolbarHeight: 70,
      floating: true,
      stretch: true,
      shadowColor: MGColors.blue.shade600.withOpacity(0.3),
      forceElevated: true,
    );
  }
}

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: AutoSizeText(title, maxLines: 1),
      elevation: 12,
      toolbarHeight: 70,
      leading: const CustomBackLeading(),
      actions: const [],
      leadingWidth: 25,
      shadowColor: MGColors.blue.shade600.withOpacity(0.3),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}

class CustomBackLeading extends StatelessWidget {
  const CustomBackLeading({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: router.pop,
      child: Assets.icons.leftArrow.svg(
        color: Colors.white,
        width: 50,
        height: 50,
      ),
    );
  }
}
