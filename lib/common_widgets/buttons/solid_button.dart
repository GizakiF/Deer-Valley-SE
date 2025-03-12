import 'package:deer_valley_teahouse/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class SolidButton extends StatefulWidget {
  final Widget? navigation;
  final Function? function;
  final String buttonText;
  final bool isActive; // New parameter to determine active state

  const SolidButton({
    super.key,
    this.navigation,
    this.buttonText = "Button Text",
    this.isActive = true, // Default to active
    this.function,
  });

  @override
  State<SolidButton> createState() => _SolidButtonState();
}

class _SolidButtonState extends State<SolidButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:
          widget.isActive
              ? () {
                widget.function!();
              }
              : null, // Disables the button when inactive
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>((
          Set<MaterialState> states,
        ) {
          if (states.contains(MaterialState.pressed)) {
            return CustomColors.brown; // Change color when pressed
          } else if (!widget.isActive) {
            return CustomColors.inactive; // Change color when inactive
          }
          return CustomColors.active; // Default active color
        }),
      ),
      child: Text(
        widget.buttonText,
        style: TextStyle(
          color:
              widget.isActive ? Colors.white : Colors.grey, // Change text color
        ),
      ),
    );
  }
}
