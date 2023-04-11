import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/gen/colors.gen.dart';

class BaseIconButton extends HookWidget {
  const BaseIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final Widget icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 32.5.h,
      height: 32.5.h,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.all(6.r),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: MGColors.dark.shade300.withOpacity(0.9),
          foregroundColor: Colors.transparent,
          shadowColor: MGColors.dark,
          elevation: 6,
        ),
        onPressed: onPressed,
        child: icon,
      ),
    );
  }
}
