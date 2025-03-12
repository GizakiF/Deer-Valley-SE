import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:deer_valley_teahouse/constants/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      height: 70.0,
      backgroundColor: CustomColors.brown,
      color: Colors.white,
      items: [
        HugeIcon(icon: HugeIcons.strokeRoundedHome01, color: Colors.white),
        HugeIcon(
          icon: HugeIcons.strokeRoundedShoppingCart01,
          color: Colors.white,
        ),
        HugeIcon(icon: HugeIcons.strokeRoundedUser, color: Colors.white),
      ],
    );
  }
}
