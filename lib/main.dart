import 'package:deer_valley_teahouse/features/authentication/screens/login_screen.dart';
import 'package:deer_valley_teahouse/features/menu/screens/home_screen.dart';
import 'package:deer_valley_teahouse/learnings/learnt_custom_widget.dart';
import 'package:deer_valley_teahouse/learnings/learnt_http.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
