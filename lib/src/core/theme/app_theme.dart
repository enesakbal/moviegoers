import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/gen/assets.gen.dart';
import '../../config/gen/colors.gen.dart';
import '../../config/gen/fonts.gen.dart';

class MGAppTheme {
  ThemeData get theme => ThemeData(
        fontFamily: FontFamily.apercu,
        appBarTheme: _appbarTheme(),
        scaffoldBackgroundColor: MGColors.dark,
        textTheme: _textTheme(),
      );

  TextTheme _textTheme() {
    return TextTheme(
      titleMedium: TextStyle(
        color: Colors.white,
        fontFamily: Assets.fonts.apercuProBold,
        fontSize: 25.sp,
        fontWeight: FontWeight.w600,
      ),
      titleSmall: TextStyle(
        color: MGColors.grey,
        fontFamily: Assets.fonts.apercuProBold,
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  AppBarTheme _appbarTheme() {
    return AppBarTheme(
      backgroundColor: Colors.white,
      centerTitle: false,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 16.sp,
      ),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
    );
  }
}
