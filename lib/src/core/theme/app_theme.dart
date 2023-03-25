import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moviegoers/src/config/gen/colors.gen.dart';
import 'package:moviegoers/src/config/gen/fonts.gen.dart';

class MGAppTheme {
  ThemeData get theme => ThemeData(
        fontFamily: FontFamily.apercu,
        appBarTheme: _appbarTheme(),
        scaffoldBackgroundColor: MGColors.dark,
      );

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
