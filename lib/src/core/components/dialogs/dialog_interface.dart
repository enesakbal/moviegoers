import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

abstract class IDialog extends HookWidget {
  const IDialog({super.key});

  Future<T?> show<T>(BuildContext context, {bool isDissmissible = false}) {
    return showDialog(
      context: context,
      barrierDismissible: isDissmissible,
      builder: (context) {
        return this;
      },
    );
  }
}
