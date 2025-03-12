import 'package:deer_valley_teahouse/constants/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class FilterButton extends StatefulWidget {
  const FilterButton({super.key});

  @override
  State<FilterButton> createState() => _FilterButtonState();
}

class _FilterButtonState extends State<FilterButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Padding(
        padding: const EdgeInsets.all(4.5),
        child: HugeIcon(
          icon: HugeIcons.strokeRoundedFilterHorizontal,
          color: CustomColors.darkBrown,
          size: 30,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        side: BorderSide(color: CustomColors.darkBrown, width: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}
