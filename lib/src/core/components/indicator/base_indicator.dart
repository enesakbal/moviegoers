import 'package:flutter/material.dart';

import '../../../config/gen/colors.gen.dart';

class BaseIndicator extends StatelessWidget {
  const BaseIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator.adaptive(
      backgroundColor: Colors.white,
      strokeWidth: 1.5,
      valueColor: AlwaysStoppedAnimation<Color>(MGColors.grey),
    );
  }
}
