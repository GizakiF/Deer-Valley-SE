import 'package:deer_valley_teahouse/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class IncrementDecrementButton extends StatefulWidget {
  const IncrementDecrementButton({super.key});

  @override
  State<IncrementDecrementButton> createState() =>
      _IncrementDecrementButtonState();
}

class _IncrementDecrementButtonState extends State<IncrementDecrementButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [_decrementButton(), SizedBox(width: 10), _incrementButton()],
    );
  }

  Widget _decrementButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            bottomLeft: Radius.circular(50),
          ),
        ),
        backgroundColor: CustomColors.palePink,
        foregroundColor: CustomColors.darkBrown,
      ),
      child: Icon(Icons.remove, color: CustomColors.darkBrown),
    );
  }

  Widget _incrementButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: CustomColors.palePink,
        foregroundColor: CustomColors.darkBrown,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
        ),
      ),
      child: Icon(Icons.add, color: CustomColors.darkBrown),
    );
  }
}
