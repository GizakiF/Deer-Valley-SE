import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:deer_valley_teahouse/common_widgets/menu_list_tile.dart';
import 'package:deer_valley_teahouse/common_widgets/search_bar.dart';
import 'package:deer_valley_teahouse/constants/custom_buttons.dart';
import 'package:deer_valley_teahouse/constants/custom_colors.dart';
import 'package:deer_valley_teahouse/constants/images.dart';
import 'package:deer_valley_teahouse/constants/screens.dart';
import 'package:deer_valley_teahouse/constants/utf.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
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
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 70.0,

        backgroundColor: Colors.white,
        color: CustomColors.brown,
        items: [
          HugeIcon(icon: HugeIcons.strokeRoundedHome01, color: Colors.white),
          HugeIcon(
            icon: HugeIcons.strokeRoundedShoppingCart01,
            color: Colors.white,
          ),
          HugeIcon(icon: HugeIcons.strokeRoundedUser, color: Colors.white),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Stack(
          children: [
            // Container(child: Image.asset(Images.menuBg, fit: BoxFit.fitWidth)),
            ListView(
              children: [
                _upper(),
                SizedBox(height: 30),
                _search(),
                SizedBox(height: 20),
                _categories(),
                SizedBox(height: 10),
                _listItems(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _upper() {
    return Container(
      // color: Colors.pink,
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.location_on),
              Text(
                "Bacolod, PH",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
          Row(
            children: [
              Text.rich(
                TextSpan(
                  style: TextStyle(fontSize: 30),
                  children: [
                    TextSpan(text: "Order at Deer\n"),
                    TextSpan(text: "Valley Now!"),
                  ],
                ),
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 20,
                    ),
                  ],
                ),
                width: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  child: Image.asset(Images.deerValleyLogo),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _search() {
    return Row(
      children: [
        Expanded(child: MenuSearchBar()),
        SizedBox(width: 5),
        CustomButtons.filterButton(),
      ],
    );
  }

  Widget _categories() {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Categories",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        SizedBox(height: 5),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CustomButtons.outlineButton(
                buttonText: "Milk Tea",
                buttonIcon: CustomUTF.teaUtf,
              ),
              CustomButtons.outlineButton(
                buttonText: "Meal",
                buttonIcon: CustomUTF.mealUtf,
              ),
              CustomButtons.outlineButton(
                buttonText: "Juice",
                buttonIcon: CustomUTF.juiceUtf,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _listItems() {
    return Container(
      height: 750,
      child: GridView(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          MenuListTile(menuImage: Images.carbonarraImage),
          MenuListTile(),
          MenuListTile(),
          MenuListTile(),
          MenuListTile(),
          MenuListTile(),
          MenuListTile(),
          MenuListTile(),
          MenuListTile(),
          MenuListTile(),
        ],
      ),
    );
  }
}
