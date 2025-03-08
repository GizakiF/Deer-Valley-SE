import 'package:deer_valley_teahouse/features/cart/screens/active_orders_screen.dart';
import 'package:deer_valley_teahouse/features/menu/screens/main_screen.dart';
import 'package:deer_valley_teahouse/learnings/learnt_http.dart';
import 'package:flutter/material.dart';
import 'package:deer_valley_teahouse/features/cart/screens/cart_screen.dart';
import 'package:deer_valley_teahouse/features/menu/screens/filter_ui.dart';
import 'package:deer_valley_teahouse/features/authentication/screens/login_screen.dart';
import 'package:deer_valley_teahouse/features/authentication/screens/sign_up_screen.dart';

class Screens {
  // static Future<void> loginScreen(BuildContext context) {
  //   return Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => LoginScreen()),
  //   );
  // }

  static Widget loginScreen() => LoginScreen();
  static Widget signUpScreen() => SignUpScreen();
  static Widget cartScreen() => CartScreen();
  static Widget mainScreen() => MainScreen();
  static Widget activeOrdersScreen() => ActiveOrdersScreen();
  static Widget filterScreen() => FilterUI();
  static Widget learntHttp() => LearnHttp();
}
