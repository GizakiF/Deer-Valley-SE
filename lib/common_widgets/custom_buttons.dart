import 'package:flutter/material.dart';

class OutlineButton extends StatefulWidget {
  const OutlineButton({super.key});

  @override
  State<OutlineButton> createState() => _OutlineButtonState();
}

class _OutlineButtonState extends State<OutlineButton> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(onPressed: () {}, child: Row(children: []));
  }
}
