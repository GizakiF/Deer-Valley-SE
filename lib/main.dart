import 'package:deer_valley_teahouse/constants/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      title: "Deer Valley Tea House",
      home: Screens.mainScreen(),
    );
  }
}
