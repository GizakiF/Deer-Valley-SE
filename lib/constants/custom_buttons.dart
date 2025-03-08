import 'package:deer_valley_teahouse/common_widgets/buttons/filter_button.dart';
import 'package:deer_valley_teahouse/common_widgets/buttons/increment_decrement_button.dart';
import 'package:deer_valley_teahouse/common_widgets/buttons/outline_button.dart';
import 'package:deer_valley_teahouse/common_widgets/buttons/plus_solid_button.dart';
import 'package:deer_valley_teahouse/common_widgets/buttons/solid_button.dart';
import 'package:deer_valley_teahouse/constants/utf.dart';
import 'package:flutter/material.dart';

class CustomButtons {
  static Widget solidButton({
    required Widget destination,
    String buttonText = "Button Text",
  }) {
    return SolidButton(navigation: destination, buttonText: buttonText);
  }

  static Widget incrementDecrementButton() => IncrementDecrementButton();
  static Widget plusSolidButton() => PlusSolidButton();
  static Widget filterButton() => FilterButton();

  // static Widget outlineButton() => OutlineButton();
  static Widget outlineButton({
    String buttonText = "Button",
    String buttonIcon = CustomUTF.teaUtf,
  }) {
    return OutlineButton(buttonText: buttonText, buttonIcon: buttonIcon);
  }

  // static Widget _solidButton({
  //   required Future<void> destination,
  //   String buttonText = "Button Text",
  // }) {
  //   return SolidButton(navigation: destination, buttonText: buttonText);
  // }

  // Widget solidButton => SolidButton(navigation: destination);
}
