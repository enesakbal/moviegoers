import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:cool_dropdown/models/cool_dropdown_item.dart';
import 'package:flutter/material.dart';

import '../../../config/gen/colors.gen.dart';
import '../../../core/utils/country_selection.dart';

class CountryDropdown extends StatelessWidget {
  const CountryDropdown({
    super.key,
    required this.onChange,
    required this.dropdownController,
    required this.defaultItem,
  });

  final dynamic Function(String) onChange;
  final DropdownController dropdownController;
  final CoolDropdownItem<String>? defaultItem;

  @override
  Widget build(BuildContext context) {
    return CoolDropdown(
      isMarquee: true,
      controller: dropdownController,
      onChange: (value) {
        onChange(value);
      },
      dropdownList: CountrySelectionUtils.dropDownItemList,
      //!
      defaultItem: defaultItem,
      resultOptions: ResultOptions(
        width: 70,
        render: ResultRender.icon,
        boxDecoration: BoxDecoration(
          color: MGColors.grey.shade400,
          borderRadius: BorderRadius.circular(12),
        ),
        openBoxDecoration: BoxDecoration(
          color: MGColors.grey.shade300,
          borderRadius: BorderRadius.circular(12),
        ),
        icon: const SizedBox(
          width: 10,
          height: 10,
          child: CustomPaint(
            painter: DropdownArrowPainter(color: MGColors.dark),
          ),
        ),
        isMarquee: true,
      ),
      //
      dropdownOptions: const DropdownOptions(
        top: 75,
        width: 50,
        curve: Curves.fastOutSlowIn,
        gap: DropdownGap.all(12),
        color: MGColors.grey,
      ),
      //
      dropdownTriangleOptions: const DropdownTriangleOptions(width: 0, height: 0),
      //
      dropdownItemOptions: const DropdownItemOptions(
        mainAxisAlignment: MainAxisAlignment.center,
        selectedBoxDecoration: BoxDecoration(
          color: MGColors.blue,
        ),
        selectedPadding: EdgeInsets.zero,
        alignment: Alignment.center,
        render: DropdownItemRender.icon,
        isMarquee: true,
      ),
    );
  }
}
