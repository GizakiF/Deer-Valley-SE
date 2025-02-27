import 'package:deer_valley_teahouse/features/authentication/screens/login_screen.dart';
import 'package:deer_valley_teahouse/features/authentication/screens/sign_up_screen.dart';
import 'package:deer_valley_teahouse/features/menu/screens/filter_ui.dart';
import 'package:deer_valley_teahouse/features/menu/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      title: "Deer Valley Tea House",
      home: LoginScreen(),
    );
  }
}
