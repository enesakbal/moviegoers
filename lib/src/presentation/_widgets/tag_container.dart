import 'dart:developer';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../config/gen/colors.gen.dart';

class TagContainer extends StatelessWidget {
  const TagContainer({super.key, required this.tag});

  final String tag;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        log('clicked tag contanier');
      },
      child: Container(
        height: 24,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: MGColors.blue,
          borderRadius: BorderRadius.circular(12),
        ),
        child: AutoSizeText(tag, maxLines: 1, style: const TextStyle(fontWeight: FontWeight.w400, color: Colors.white)),
      ),
    );
  }
}
