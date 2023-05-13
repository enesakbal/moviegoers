import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class IBottomSheet extends HookWidget {
  const IBottomSheet({super.key});

  Future<T?> show<T extends Widget>(BuildContext context, {bool isDissmissible = false}) {
    return showModalBottomSheet<T>(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.r),
        ),
      ),
      isScrollControlled: true,
      builder: (context) {
        return this;
      },
    );
  }
}
