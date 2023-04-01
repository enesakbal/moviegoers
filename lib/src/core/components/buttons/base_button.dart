import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/gen/colors.gen.dart';

typedef FutureCallBack = Future<void> Function();

class BaseButton extends HookWidget {
  const BaseButton({
    super.key,
    required this.title,
    required this.foregroundColor,
    required this.backgroundColor,
    this.borderColor,
    required this.onPressed,
    this.onPressedAysnc,
    this.outline = false,
    this.size,
  });

  const BaseButton.outline({
    super.key,
    required this.title,
    required this.foregroundColor,
    required this.backgroundColor,
    this.borderColor,
    required this.onPressed,
    this.onPressedAysnc,
    this.outline = true,
    this.size,
  });

  const BaseButton.async({
    super.key,
    required this.title,
    required this.foregroundColor,
    required this.backgroundColor,
    this.borderColor,
    this.onPressed,
    required this.onPressedAysnc,
    this.outline = false,
    this.size,
  });

  final String title;
  final Color foregroundColor;
  final Color backgroundColor;
  final Color? borderColor;
  final bool outline;
  final FutureCallBack? onPressedAysnc;
  final void Function()? onPressed;
  final Size? size;

  @override
  Widget build(BuildContext context) {
    final isLoading = useState(false);

    void changeIsLoading() => isLoading.value = !isLoading.value;

    Future<void> completeAction() async {
      changeIsLoading();

      await Future.delayed(
        const Duration(milliseconds: 300),
        () async => onPressedAysnc!(),
      );

      changeIsLoading();
    }

    final style = OutlinedButton.styleFrom(
      foregroundColor: foregroundColor,
      backgroundColor: outline ? Colors.transparent : backgroundColor,
      fixedSize: size ?? Size(1.sw, 48),
      elevation: 0,
      side: BorderSide(
        width: outline ? 0.66 : 0,
        color: outline ? (borderColor ?? backgroundColor) : Colors.transparent,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12.r)),
      ),
      disabledBackgroundColor: MGColors.green.shade100,
    );

    return OutlinedButton(
      onPressed: onPressedAysnc != null
          ? isLoading.value
              ? null
              : completeAction
          : onPressed,
      style: style,
      child: isLoading.value
          ? Center(
              child: SizedBox(
                height: 24,
                width: 24,
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  color: foregroundColor,
                ),
              ),
            )
          : Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.sp),
            ),
    );
  }
}

class BaseButtonWithIcon extends StatelessWidget {
  const BaseButtonWithIcon({
    super.key,
    required this.title,
    required this.foregroundColor,
    required this.backgroundColor,
    this.outline = false,
    required this.onPressed,
    this.child,
    this.iconPositionIsRight = true,
    this.size,
  });

  final String title;
  final Color foregroundColor;
  final Color backgroundColor;
  final bool outline;
  final VoidCallback? onPressed;
  final Widget? child;
  final bool iconPositionIsRight;
  final Size? size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        BaseButton(
          title: title,
          foregroundColor: foregroundColor,
          backgroundColor: backgroundColor,
          onPressed: onPressed,
          outline: outline,
          size: size,
        ),
        Positioned(
          right: iconPositionIsRight ? 20 : null,
          left: iconPositionIsRight ? null : 20,
          child: child ??
              Icon(
                Icons.arrow_right_alt_sharp,
                color: foregroundColor,
              ),
        ),
      ],
    );
  }
}
