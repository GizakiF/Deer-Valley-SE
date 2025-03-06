import 'package:deer_valley_teahouse/common_widgets/basic_placeholder.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'widgets/CustomListTileWidget.dart';

class LearntCustomWidgets extends StatefulWidget {
  const LearntCustomWidgets({super.key});

  @override
  State<LearntCustomWidgets> createState() => _LearntCustomWidgetsState();
}

class _LearntCustomWidgetsState extends State<LearntCustomWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Text("Custom Widget"),
      ),
      body: ListView(
        children: [
          CustomListTileWidget(
            title: "Hello",
            subtitle: "Ben",
            textColor: Colors.white,
            iconColor: Colors.white,
            listTileColor: Colors.pink,
            leadingIcon: Icons.bed,
          ),
          CustomListTileWidget(title: "Hello", subtitle: "hahaha"),
          CustomListTileWidget(title: "Hello", subtitle: "hahaha"),
          CustomListTileWidget(title: "Hello", subtitle: "hahaha"),
          CustomListTileWidget(title: "Hello", subtitle: "hahaha"),
        ],
      ),
    );
  }
}

class CustomButton extends StatefulWidget {
  CustomButton({super.key});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool _isToggled = false;
  IconData? _myIcon = Icons.house;
  String _msg = "no";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(_myIcon),
          onPressed: () {
            setState(() {
              if (_isToggled) {
                _myIcon = Icons.house_outlined;
              } else {
                _myIcon = Icons.house;
              }
              _isToggled = !_isToggled;
            });
          },
        ),
        Text(_msg = _isToggled ? "Yes" : "No"),
      ],
    );
  }
}
