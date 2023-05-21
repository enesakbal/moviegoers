import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/gen/assets.gen.dart';
import '../../../config/gen/colors.gen.dart';
import '../../../config/router/app_router.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: GestureDetector(
        onTap: () async => router.push(const SearchRoute()),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 20.h),
          child: Container(
            height: 45.h,
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            decoration: BoxDecoration(
              color: MGColors.blue.shade500.withOpacity(1),
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                color: Colors.white,
                width: 0.8,
              ),
            ),
            child: Row(
              children: [
                Assets.icons.search.svg(height: 21, color: Colors.black),
                20.horizontalSpace,
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'The Lord Of the Rings',
                      textStyle: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      speed: const Duration(milliseconds: 200),
                      cursor: '',
                    ),
                  ],
                  repeatForever: true,
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                  onTap: () async => router.push(const SearchRoute()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
