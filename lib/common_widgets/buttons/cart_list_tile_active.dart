import 'package:deer_valley_teahouse/common_widgets/cart_list_tile.dart';
import 'package:deer_valley_teahouse/constants/custom_buttons.dart';
import 'package:deer_valley_teahouse/constants/custom_colors.dart';
import 'package:deer_valley_teahouse/constants/images.dart';
import 'package:deer_valley_teahouse/constants/screens.dart';
import 'package:flutter/material.dart';

class CartListTileActive extends CartListTile {
  // TODO: understand oop again
  const CartListTileActive({
    super.key,
    required String listTitle,
    required String date,
    required int itemCount,
    required double totalPrice,
    String listImage = Images.teaImage,
    IconData listIcon = Icons.label,
  }) : super(
         listTitle: listTitle,
         date: date,
         itemCount: itemCount,
         totalPrice: totalPrice,
         listImage: listImage,
         listIcon: listIcon,
       );
  @override
  State<CartListTileActive> createState() => _CartListTileActiveState();
}

class _CartListTileActiveState extends State<CartListTileActive> {
  // TODO: fix infinite loop
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
                      // TODO: FIX, when on longer strings, it jjust overflows
                      Text(
                        widget.listTitle,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                        softWrap: true,
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
                      Text(
                        widget.date,
                        style: TextStyle(
                          fontSize: 15,
                          color: CustomColors.darkBrown,
                        ),
                      ),
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
                  Row(
                    children: [
                      CustomButtons.solidButton(
                        destination: Screens.mainScreen(),
                        buttonText: "Cancel Corder",
                      ),
                    ],
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
