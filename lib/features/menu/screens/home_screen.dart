import 'package:deer_valley_teahouse/features/menu/screens/filter_ui.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(onPressed: () {}),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          children: [
            Icon(Icons.location_on, color: Colors.brown),
            SizedBox(width: 5),
            Text(
              "Bacolod, PH",
              style: TextStyle(color: Colors.brown, fontSize: 16),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        // not working
        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
        child: NavigationBar(
          indicatorColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          elevation: 10,
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: '',
            ),
            NavigationDestination(
              icon: Icon(Icons.shopping_cart_outlined),
              label: '',
            ),
            NavigationDestination(icon: Icon(Icons.menu_rounded), label: ''),
          ],
        ),
      ),
      // bottomNavigationBar: BottomAppBar(
      //   color: Colors.brown[100],
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       Column(
      //         children: [
      //           IconButton(
      //             icon: Icon(Icons.home, color: Colors.brown),
      //             onPressed: () {},
      //           ),
      //         ],
      //       ),
      //       Column(
      //         children: [
      //           IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
      //         ],
      //       ),
      //       Column(
      //         children: [IconButton(icon: Icon(Icons.menu), onPressed: () {})],
      //       ),
      //     ],
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Order at Deer \nValley Now!",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.brown,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                // ClipRRect(
                //   borderRadius: BorderRadius.circular(12),
                //   child: Image.asset(
                //     "assets/deer_logo.png", // Change with actual image path
                //     height: 50,
                //     width: 50,
                //     fit: BoxFit.cover,
                //   ),
                // ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search, color: Colors.grey),
                      hintText: "Search",
                      fillColor: Colors.grey[200],
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  height: 55,
                  width: 55,
                  // padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.tune),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return FilterUI();
                          },
                        ),
                      );
                    },
                    color: Colors.brown,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              "Available Menus",
              style: TextStyle(
                color: Colors.brown,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(child: _menuCategory("Meal")),
                Expanded(child: _menuCategory("Dessert")),
                Expanded(child: _menuCategory("Drinks")),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // Adjust spacing as needed
              children: [
                Expanded(
                  child: Container(
                    // decoration: BoxDecoration(border: BoxBor),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/images/food.jpg'),
                          width: 150,
                        ),
                        Text('Placeholder'),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('assets/images/food.jpg'),
                        width: 150,
                      ),
                      Text('Placeholder'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.brown[200],
        onPressed: () {},
        child: const Icon(Icons.shopping_bag, color: Colors.white),
      ),
    );
  }

  Widget _menuCategory(String title) {
    // return Padding(
    //   padding: const EdgeInsets.only(right: 8.0),
    //
    //   child: Chip(label: Text(title), backgroundColor: Colors.brown[100]),
    // );
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      child: OutlinedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          side: BorderSide(color: Colors.brown),
        ),
        child: Text(
          title,
          style: TextStyle(color: Colors.brown),
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
