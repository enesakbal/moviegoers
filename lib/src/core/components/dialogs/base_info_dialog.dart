import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/gen/colors.gen.dart';
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
      backgroundColor: MGColors.dark.shade400,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      insetPadding: const EdgeInsets.all(10),
      contentPadding: EdgeInsets.all(10.r),
      titlePadding: const EdgeInsets.all(20),
      title: Text(title, textAlign: TextAlign.center),
      titleTextStyle: Theme.of(context).textTheme.titleMedium,
      children: [
        content,
        40.verticalSpace,
      ],
    );
  }
}
