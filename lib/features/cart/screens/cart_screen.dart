import 'package:deer_valley_teahouse/common_widgets/basic_placeholder.dart';
import 'package:deer_valley_teahouse/common_widgets/cart_list_tile.dart';
import 'package:deer_valley_teahouse/constants/custom_buttons.dart';
import 'package:deer_valley_teahouse/features/menu/screens/home_screen.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return BasicPlaceholder(
      placeholderIcon: Icons.shopping_cart,
      placeholderTitle: "Your Cart",
      listView: ListView(
        children: [
          CartListTile(
            itemCount: 3,
            totalPrice: 30.0,
            date: "06/03/2025",
            listTitle: "Carbonarra",
          ),
          CartListTile(
            itemCount: 3,
            totalPrice: 30.0,
            date: "06/03/2025",
            listTitle: "Carbonarra",
          ),
          CartListTile(
            itemCount: 3,
            totalPrice: 30.0,
            date: "06/03/2025",
            listTitle: "Carbonarra",
          ),
          CartListTile(
            itemCount: 3,
            totalPrice: 30.0,
            date: "06/03/2025",
            listTitle: "Carbonarra",
          ),
          CartListTile(
            itemCount: 3,
            totalPrice: 30.0,
            date: "06/03/2025",
            listTitle: "Carbonarra",
          ),
          CartListTile(
            itemCount: 3,
            totalPrice: 30.0,
            date: "06/03/2025",
            listTitle: "Carbonarra",
          ),
          CartListTile(
            itemCount: 3,
            totalPrice: 30.0,
            date: "06/03/2025",
            listTitle: "Carbonarra",
          ),
          CartListTile(
            itemCount: 3,
            totalPrice: 30.0,
            date: "06/03/2025",
            listTitle: "Carbonarra",
          ),
          CartListTile(
            itemCount: 3,
            totalPrice: 30.0,
            date: "06/03/2025",
            listTitle: "Carbonarra",
          ),
          CartListTile(
            itemCount: 3,
            totalPrice: 30.0,
            date: "06/03/2025",
            listTitle: "Carbonarra",
          ),
          CartListTile(
            itemCount: 3,
            totalPrice: 30.0,
            date: "06/03/2025",
            listTitle: "Carbonarra",
          ),
          CartListTile(
            itemCount: 3,
            totalPrice: 30.0,
            date: "06/03/2025",
            listTitle: "Carbonarra",
          ),
          CartListTile(
            itemCount: 3,
            totalPrice: 30.0,
            date: "06/03/2025",
            listTitle: "Carbonarra",
          ),
        ],
      ),
    );
  }
}
