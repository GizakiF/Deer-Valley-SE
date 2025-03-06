import 'package:deer_valley_teahouse/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class DenyButton extends StatelessWidget {
  const DenyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.pop(context);
      },
      style: OutlinedButton.styleFrom(
        shape: const CircleBorder(), // Makes the button circular
        side: const BorderSide(color: CustomColors.darkbrown, width: 3), // Red outline
        foregroundColor: Colors.white, // X icon colo
        padding: const EdgeInsets.all(16), // Adjusts button size
      ),
      child: const Icon(Icons.close, size: 30,color: CustomColors.darkbrown,), // "X" icon in the center
    );
  }
}
