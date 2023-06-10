import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/gen/assets.gen.dart';
import '../../../config/gen/colors.gen.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
    required this.controller,
    required this.onChanged,
  });

  final TextEditingController controller;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      controller: controller,
      style: TextStyle(fontSize: 12.sp),
      textAlignVertical: TextAlignVertical.center,
      cursorColor: Colors.white,
      cursorWidth: 1.5,
      decoration: InputDecoration(
        hintText: 'Search',
        prefixIcon: Padding(
          padding: EdgeInsets.all(10.r),
          child: Assets.icons.search.svg(color: Colors.black),
        ),
        prefixIconConstraints: BoxConstraints.loose(const Size.fromHeight(45)),
        contentPadding: const EdgeInsets.all(14),
        fillColor: MGColors.blue.shade500.withOpacity(1),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        errorBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
      ),
    );
  }
}
