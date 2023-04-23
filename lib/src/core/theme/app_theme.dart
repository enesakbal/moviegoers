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
        color: MGColors.grey.shade300,
        fontFamily: Assets.fonts.apercuProBold,
        fontSize: 13.sp,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: TextStyle(
        color: MGColors.grey.shade300,
        fontFamily: Assets.fonts.apercuProRegular,
        fontSize: 14.sp,
        wordSpacing: 4,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  AppBarTheme _appbarTheme() {
    return AppBarTheme(
      backgroundColor: MGColors.dark,
      centerTitle: true,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 24.sp,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.elliptical(600.h, 100.w))),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark, //<-- For Android SEE HERE (dark icons)
        statusBarBrightness: Brightness.light, //
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.white,
      ),
    );
  }
}
