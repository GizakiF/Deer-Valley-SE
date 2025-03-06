import 'package:deer_valley_teahouse/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class ApproveButton extends StatelessWidget {
  const ApproveButton({super.key, this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:(){

      } ,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(), // Makes the button circular
        backgroundColor: CustomColors.darkbrown, // Solid dark brown color
        foregroundColor: Colors.white, // Check icon color
        padding: const EdgeInsets.all(16), // Adjusts button size
        // elevation: 4, // Adds shadow for better UI
      ),
      child: const Icon(Icons.check, size: 30,color: Colors.white,), // Check icon in the center
    );  
  }
}
