import 'package:flutter/material.dart';

import '../../config/gen/colors.gen.dart';

class TagContainer extends StatelessWidget {
  const TagContainer({super.key, required this.tag});

  final String tag;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: MGColors.blue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(tag, style: const TextStyle(fontWeight: FontWeight.w400, color: Colors.white)),
    );
  }
}
