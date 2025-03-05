import 'package:flutter/material.dart';

class CustomListTileWidget extends StatelessWidget {
  String title, subtitle;
  IconData leadingIcon, trailingIcon;
  Color? listTileColor, iconColor, textColor;

  CustomListTileWidget({
    required this.title,
    required this.subtitle,
    this.leadingIcon = Icons.label,
    this.trailingIcon = Icons.label,
    this.listTileColor,
    this.iconColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        iconColor: iconColor,
        textColor: textColor,
        tileColor: listTileColor,
        leading: Icon(leadingIcon),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Icon(trailingIcon),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.pink,
            width: 2.0,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadiusDirectional.vertical(
            top: Radius.circular(50),
          ),
        ),
      ),
    );
  }
}
