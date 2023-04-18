import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/gen/colors.gen.dart';

class BaseIconButton extends HookWidget {
  const BaseIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.outline = false,
    this.isDark = false,
    this.foregroundColor = Colors.transparent,
  });

  final Widget icon;
  final void Function()? onPressed;
  final bool outline;
  final bool isDark;

  final Color foregroundColor;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: !outline ? 10 : 0, sigmaY: !outline ? 10 : 0),
        child: SizedBox(
          width: 37.5.h,
          height: 37.5.h,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.all(6.r),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              backgroundColor: isDark ? MGColors.dark : MGColors.grey.withOpacity(0.8),
              foregroundColor: foregroundColor,
              shadowColor: MGColors.dark,
              elevation: 6,
              side: outline
                  ? BorderSide(
                      width: 0.6,
                      color: MGColors.grey.shade200,
                    )
                  : null,
            ),
            onPressed: onPressed,
            child: icon,
          ),
        ),
      ),
    );
  }
}
