import 'package:flutter/material.dart';
import 'package:deer_valley_teahouse/features/cart/screens/cart_screen.dart';
import 'package:deer_valley_teahouse/features/menu/screens/filter_ui.dart';
import 'package:deer_valley_teahouse/features/authentication/screens/login_screen.dart';
import 'package:deer_valley_teahouse/features/authentication/screens/sign_up_screen.dart';
import 'package:deer_valley_teahouse/features/menu/screens/home_screen.dart';

class Screens {
  static Widget homeScreen() => HomeScreen();
  static Widget loginScreen() => LoginScreen();
  static Widget signUpScreen() => SignUpScreen();
  static Widget cartScreen() => CartScreen();
  static Widget filterScreen() => FilterUI();
}
