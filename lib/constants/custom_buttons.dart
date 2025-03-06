import 'package:deer_valley_teahouse/common_widgets/solid_button.dart';
import 'package:flutter/material.dart';

class CustomButtons {
  final Widget? destination;
  CustomButtons({this.destination});
  static Widget solidButton(Widget destination) =>
      SolidButton(navigation: destination);
  // Widget solidButton => SolidButton(navigation: destination);
}
