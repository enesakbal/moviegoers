import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/gen/colors.gen.dart';

class KeywordChip extends StatelessWidget {
  const KeywordChip({super.key, required this.keyword});
  final String keyword;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: RawChip(
        onPressed: () {},
        backgroundColor: MGColors.grey,
        labelStyle: Theme.of(context).textTheme.labelMedium!.copyWith(fontSize: 12.sp, color: Colors.white),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        label: AutoSizeText(
          '#$keyword',
          maxLines: 1,
        ),
      ),
    );
  }
}
