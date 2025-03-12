import 'package:deer_valley_teahouse/constants/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeerValleyTheme {
  DeerValleyTheme._();

  static ThemeData lightMode = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    textTheme: GoogleFonts.dmSansTextTheme(),
    colorScheme: ColorScheme.light(
      surface: Colors.white,
      primary: CustomColors.darkBrown,
    ),
  );

  static ThemeData darkMode = ThemeData(
    useMaterial3: true,
    textTheme: GoogleFonts.dmSansTextTheme(),
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(surface: Colors.black),
  );
}
