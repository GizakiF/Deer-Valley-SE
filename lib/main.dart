import 'package:deer_valley_teahouse/constants/screens.dart';
import 'package:deer_valley_teahouse/constants/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: DeerValleyTheme.lightMode,
      darkTheme: DeerValleyTheme.darkMode,
      themeMode: ThemeMode.system,
      title: "Deer Valley Tea House",
      home: Screens.mainScreen(),
    );
  }
}
