import 'package:deer_valley_teahouse/common_widgets/basic_placeholder.dart';
import 'package:deer_valley_teahouse/common_widgets/buttons/cart_list_tile_active.dart';
import 'package:deer_valley_teahouse/constants/custom_buttons.dart';
import 'package:deer_valley_teahouse/constants/screens.dart';
import 'package:flutter/material.dart';

class ActiveOrdersScreen extends StatefulWidget {
  const ActiveOrdersScreen({super.key});

  @override
  State<ActiveOrdersScreen> createState() => _ActiveOrdersScreenState();
}

class _ActiveOrdersScreenState extends State<ActiveOrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return BasicPlaceholder(
      placeholderIcon: Icons.air,
      placeholderTitle: "Orders",
      navigationItems: [
        Expanded(
          child: CustomButtons.solidButton(
            destination: Screens.cartScreen(),
            buttonText: "Cart",
          ),
        ),
        SizedBox(width: 10),
        Expanded(child: CustomButtons.solidButton(buttonText: "Active")),
      ],
      listView: ListView(
        children: [
          CartListTileActive(
            listTitle: "Milk Tea",
            date: "2025-03-07",
            itemCount: 4,
            totalPrice: 100.0,
          ),
          CartListTileActive(
            listTitle: "hello",
            date: "2025-03-07",
            itemCount: 4,
            totalPrice: 100.0,
          ),
          CartListTileActive(
            listTitle: "hello",
            date: "2025-03-07",
            itemCount: 10,
            totalPrice: 400.0,
          ),
        ],
      ),
    );
  }
}
