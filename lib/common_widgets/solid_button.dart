import 'package:deer_valley_teahouse/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class SolidButton extends StatefulWidget {
  final Widget navigation;
  final String buttonText;
  const SolidButton({
    super.key,
    required this.navigation,
    this.buttonText = "",
  });

  @override
  State<SolidButton> createState() => _SolidButtonState();
}

class _SolidButtonState extends State<SolidButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        MaterialPageRoute(builder: (context) => widget.navigation);
      },
      style: ElevatedButton.styleFrom(backgroundColor: CustomColors.inactive),
      child: Text(widget.buttonText),
    );
  }
}
