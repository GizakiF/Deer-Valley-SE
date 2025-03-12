import 'package:deer_valley_teahouse/constants/custom_buttons.dart';
import 'package:deer_valley_teahouse/constants/custom_colors.dart';
import 'package:deer_valley_teahouse/constants/images.dart';
import 'package:deer_valley_teahouse/constants/screens.dart';
import 'package:flutter/material.dart';

class CartListTile extends StatefulWidget {
  final ListTile? listTile;
  final String listTitle, date;
  final int itemCount;
  final double totalPrice;
  final String listImage;
  final IconData listIcon;

  const CartListTile({
    super.key,
    this.listTile,
    this.listTitle = "Menu Name",
    this.date = "date here",
    this.itemCount = 0,
    this.totalPrice = 0.0,
    this.listImage = Images.teaImage,
    this.listIcon = Icons.label,
  });

  @override
  State<CartListTile> createState() => _CartListTileState();
}

class _CartListTileState extends State<CartListTile> {
  String _msgItem = "item";

  @override
  Widget build(BuildContext context) {
    // if (widget.itemCount > 1) {
    //   setState(() {
    //     _msgItem = "items";
    //   });
    // } else {
    //   setState(() {
    //     _msgItem = "item";
    //   });
    // }
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100,
              height: 150,
              child: Image.asset(widget.listImage),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        widget.listTitle,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "₱ ${widget.totalPrice.toString()}",
                        style: TextStyle(
                          color: CustomColors.price,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Spacer(),
                      Text(
                        "${widget.itemCount.toString()} $_msgItem",
                        style: TextStyle(
                          fontSize: 15,
                          color: CustomColors.darkBrown,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),

                  // REMOVE and incremen/decrement buttton
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Wrap(
                      children: [
                        CustomButtons.solidButton(
                          destination: Screens.mainScreen(),
                          buttonText: "Remove",
                        ),
                        Spacer(),
                        CustomButtons.incrementDecrementButton(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Divider(color: CustomColors.brown),
      ],
    );
  }
}
