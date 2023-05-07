import 'package:cool_dropdown/models/cool_dropdown_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class CountrySelectionUtils {
  static final List<String> flags = [
    'flags/ca',
    'flags/de',
    'flags/es',
    'flags/tr',
    'flags/fr',
    'flags/gb',
    'flags/ind',
    'flags/it',
    'flags/jp',
    'flags/kr',
    'flags/ru',
    'flags/us',
  ];

  static final List<CoolDropdownItem<String>> dropDownItemList = flags
      .map(
        (e) => CoolDropdownItem<String>(
          label: e.split('/')[1].toUpperCase(),
          icon: SizedBox(
            height: 25,
            width: 25,
            child: SvgPicture.asset(
              'assets/$e.svg',
            ),
          ),
          value: e.split('/')[1],
        ),
      )
      .toList();
}
