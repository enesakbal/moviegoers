import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/gen/colors.gen.dart';
import 'bottom_sheet_interface.dart';

class BaseBottomSheet extends IBottomSheet {
  const BaseBottomSheet({
    super.key,
    required this.child,
    this.initFunc,
  });

  final Widget child;
  final void Function()? initFunc;

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      // if (initAysnc != null) {
      //   Future.delayed(
      //     const Duration(milliseconds: 300),
      //     () async => initAysnc!(),
      //   );
      // }
      if (initFunc != null) {
        initFunc!();
      }

      return () {};
    }, []);

    return ColoredBox(
      color: MGColors.dark,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.r),
            child: Column(
              children: [
                5.verticalSpace,
                Divider(
                  indent: .35.sw,
                  endIndent: .35.sw,
                  thickness: 3,
                  color: MGColors.grey,
                ),
                15.verticalSpace,
                child,
                25.verticalSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
