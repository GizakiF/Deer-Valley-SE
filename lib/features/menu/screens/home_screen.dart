import 'package:deer_valley_teahouse/common_widgets/menu_list_tile.dart';
import 'package:deer_valley_teahouse/common_widgets/search_bar.dart';
import 'package:deer_valley_teahouse/constants/custom_buttons.dart';
import 'package:deer_valley_teahouse/constants/custom_colors.dart';
import 'package:deer_valley_teahouse/constants/images.dart';
import 'package:deer_valley_teahouse/constants/utf.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return home();
  }

  Widget home() {
    return Stack(
      children: [
        //background
        Positioned(
          top: 180,
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(300)),
              color: CustomColors.brown,
            ),
          ),
        ),

        //content
        Column(
          children: [
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [_upper(), SizedBox(height: 30), _search()],
              ),
            ),
            SizedBox(height: 20),
            _categories(),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(left: 5, right: 5),
              child: _listItems(),
            ),
          ],
        ),
      ],
    );
  }

  Widget _upper() {
    return Column(
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Categories",
              style: TextStyle(
                color: CustomColors.darkBrown,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
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

  // TODO: REMOVE THE MARGIN OR SPACE BELOW IT
  Widget _listItems() {
    return SizedBox(
      height: 400,
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
        ],
      ),
    );
  }
}
