import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/gen/assets.gen.dart';
import 'base_icon_button.dart';

typedef FutureCallBack = Future<void> Function();

class FavoriteIconButton extends HookWidget {
  const FavoriteIconButton({super.key, required this.onPressed});

  final FutureCallBack onPressed;

  @override
  Widget build(BuildContext context) {
    final isFav = useState<bool>(false);

    void toggleFav() {
      isFav.value = !isFav.value;
    }

    return Padding(
      padding: EdgeInsets.all(10.r),
      child: BaseIconButton(
        onPressed: () async {
          onPressed().then((value) => log('successful')).catchError((_) => log('unsuccessful'));

          toggleFav();
        },
        icon: isFav.value
            ? Assets.icons.filledHeart.svg(color: Colors.white, width: 20)
            : Assets.icons.emptyHeart.svg(color: Colors.white, width: 20),
      ),
    );
  }
}
