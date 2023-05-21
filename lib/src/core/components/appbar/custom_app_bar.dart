import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/gen/assets.gen.dart';
import '../../../config/gen/colors.gen.dart';
import '../../../config/router/app_router.dart';
import '../search_bar/search_bar.dart';

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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.elliptical(600.h, 100.w))),
    );
  }
}

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar({
    super.key,
    this.title,
    this.hasSearch = false,
    this.titleStyle,
    this.searchBarController,
  })  : assert(title != null || hasSearch, 'Title must not be empty or hasSearch must true'),
        assert(hasSearch ? hasSearch && searchBarController != null : !hasSearch,
            'When hasSearh is true, you must give a controller for TextField');

  final String? title;
  final bool hasSearch;
  final TextStyle? titleStyle;
  final TextEditingController? searchBarController;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: hasSearch
          ? SearchBar(controller: searchBarController!)
          : AutoSizeText(title!, maxLines: 1, style: titleStyle),
      elevation: 12,
      toolbarHeight: 70,
      leadingWidth: 45,
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
