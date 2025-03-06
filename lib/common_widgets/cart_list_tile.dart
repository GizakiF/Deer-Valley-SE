import 'package:deer_valley_teahouse/constants/custom_colors.dart';
import 'package:deer_valley_teahouse/constants/images.dart';
import 'package:flutter/material.dart';

class CartListTile extends StatefulWidget {
  final ListTile? listTile;
  final String listTitle, date;
  final int itemCount;
  final double totalPrice;
  final Image? listImage;
  final IconData listIcon;

  const CartListTile({
    super.key,
    this.listTile,
    required this.listTitle,
    required this.date,
    required this.itemCount,
    required this.totalPrice,
    this.listImage,
    this.listIcon = Icons.label,
  });

  @override
  State<CartListTile> createState() => _CartListTileState();
}

class _CartListTileState extends State<CartListTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(color: CustomColors.brown),
        ListTile(
          leading: Image(image: Images.teaImage.image),
          title: Text(
            widget.listTitle,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(widget.date),
        ),
      ],
    );
  }
}
