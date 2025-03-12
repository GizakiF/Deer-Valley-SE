import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:deer_valley_teahouse/constants/custom_colors.dart';
import 'package:deer_valley_teahouse/constants/screens.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentPageIndex = 0;
  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      Screens.homeScreen(),
      Screens.cartScreen(),
      Screens.loginScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _curvedNavigationBar(),
      body: _pages[currentPageIndex],
    );
  }

  FloatingActionButton floatingButton(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: CustomColors.brown,
      onPressed: () {},
      child: IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Screens.cartScreen()),
          );
        },
        icon: Icon(Icons.shopping_bag),
        color: Colors.white,
      ),
    );
  }

  CurvedNavigationBar _curvedNavigationBar() {
    return CurvedNavigationBar(
      index: currentPageIndex,
      height: 70.0,
      backgroundColor: CustomColors.brown,
      color: Colors.white,
      onTap: (index) {
        setState(() {
          currentPageIndex = index;
        });
      },
      items: [
        HugeIcon(
          icon: HugeIcons.strokeRoundedHome01,
          color: CustomColors.darkBrown,
        ),
        HugeIcon(
          icon: HugeIcons.strokeRoundedShoppingCart01,
          color: CustomColors.darkBrown,
        ),
        HugeIcon(
          icon: HugeIcons.strokeRoundedUser,
          color: CustomColors.darkBrown,
        ),
      ],
    );
  }
}
