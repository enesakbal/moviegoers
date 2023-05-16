import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/gen/colors.gen.dart';
import '../../../config/router/app_router.dart';
import '../buttons/base_icon_button.dart';
import 'dialog_interface.dart';

class BaseInfoDialog extends IDialog {
  const BaseInfoDialog(
    this.title, {
    super.key,
    required this.content,
    this.initFunc,
  });

  final String title;
  final Widget content;
  final void Function()? initFunc;

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      if (initFunc != null) {
        initFunc!();
      }
      return () {};
    }, []);

    return SimpleDialog(
      backgroundColor: MGColors.dark,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      insetPadding: const EdgeInsets.all(10),
      contentPadding: EdgeInsets.all(10.r),
      titlePadding: EdgeInsets.fromLTRB(20.r, 20.r, 20.r, 10.r),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, textAlign: TextAlign.center),
          BaseIconButton(
            icon: const Icon(Icons.close, color: Colors.white),
            onPressed: router.pop,
            outline: true,
          ),
        ],
      ),
      titleTextStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: MGColors.dark.shade50),
      children: [
        content,
        20.verticalSpace,
      ],
    );
  }
}
