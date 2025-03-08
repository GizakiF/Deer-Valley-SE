import 'package:deer_valley_teahouse/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class PlusSolidButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const PlusSolidButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(), // Ensures a perfect circle
        backgroundColor: CustomColors.darkBrown, // Button color
        foregroundColor: Colors.white, // Icon color
        padding: const EdgeInsets.all(16), // Adjusts button size
      ),
      child: const Icon(
        Icons.add,
        size: 20,
        color: Colors.white,
      ), // Plus icon inside
    );
  }
}
