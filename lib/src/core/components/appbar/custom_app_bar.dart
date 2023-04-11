import 'package:flutter/material.dart';

import '../../../config/gen/colors.gen.dart';

class BaseAppBar extends StatelessWidget {
  const BaseAppBar({super.key});

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
