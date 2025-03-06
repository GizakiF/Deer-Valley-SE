import 'package:deer_valley_teahouse/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class OutlineButton extends StatefulWidget {
  const OutlineButton({super.key});

  @override
  State<OutlineButton> createState() => _OutlineButtonState();
}

class _OutlineButtonState extends State<OutlineButton> {
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: () {},
      child: Text('Check Out', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        side: BorderSide(color: Colors.black),
      ),

    );
  }
}