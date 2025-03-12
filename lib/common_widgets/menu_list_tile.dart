import 'package:deer_valley_teahouse/constants/custom_buttons.dart';
import 'package:deer_valley_teahouse/constants/custom_colors.dart';
import 'package:deer_valley_teahouse/constants/images.dart';
import 'package:flutter/material.dart';

class MenuListTile extends StatefulWidget {
  final String menuImage;
  final String menuName;
  final double menuPrice;
  final double menuRating;

  MenuListTile({
    this.menuImage = Images.teaImage,
    this.menuName = "Menu Name",
    this.menuPrice = 0.0,
    this.menuRating = 0.0,
  });

  @override
  State<MenuListTile> createState() => _MenuListTileState();
}

class _MenuListTileState extends State<MenuListTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Icon(Icons.star, color: CustomColors.star),
                  Text(widget.menuRating.toString()),
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150,
                    height: 175,
                    child: Image.asset(widget.menuImage),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  widget.menuName,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.width < 600 ? 18 : 25,
                    fontWeight: FontWeight.bold,
                  ),
                  softWrap: true,
                  overflow: TextOverflow.visible,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // TODO: make the peso sign display
                Text("₱ ${widget.menuPrice.toStringAsFixed(2)}"),
                // TODO: align it to the right
                CustomButtons.plusSolidButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
