import 'package:deer_valley_teahouse/features/menu/screens/home_screen.dart';
import 'package:flutter/material.dart';

class FilterUI extends StatefulWidget {
  @override
  _FilterUIState createState() => _FilterUIState();
}

class _FilterUIState extends State<FilterUI> {
  double _selectedPrice = 100;
  List<bool> _selectedCategories = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.brown[200],
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.brown),
          onPressed:
              () => Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomeScreen();
                  },
                ),
              ),
        ),
        title: Text(
          "Filter",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            _buildSectionTitle("Types"),
            _buildTypeFilters(),
            Divider(),
            _buildSectionTitle("Sort by"),
            _buildStarRating(),
            Divider(),
            _buildSectionTitle("Categories"),
            _buildCategoryFilters(),
            Divider(),
            _buildSectionTitle("Price"),
            _buildPriceSlider(),
            SizedBox(height: 20),
            _buildApplyButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.brown,
        ),
      ),
    );
  }

  Widget _buildTypeFilters() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildFilterIcon(Icons.fastfood, "Snacks"),
        _buildFilterIcon(Icons.restaurant, "Meal"),
        _buildFilterIcon(Icons.cake, "Dessert"),
        _buildFilterIcon(Icons.local_drink, "Drinks"),
      ],
    );
  }

  Widget _buildFilterIcon(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.brown[100],
          child: Icon(icon, color: Colors.brown[800], size: 30),
        ),
        SizedBox(height: 5),
        Text(label, style: TextStyle(color: Colors.black)),
      ],
    );
  }

  Widget _buildStarRating() {
    return Row(
      children: List.generate(5, (index) {
        return Icon(
          index < 4 ? Icons.star : Icons.star_border,
          color: Colors.brown,
        );
      }),
    );
  }

  Widget _buildCategoryFilters() {
    return Wrap(
      spacing: 8.0,
      children: List.generate(_selectedCategories.length, (index) {
        return ChoiceChip(
          label: Text("xxx"),
          selected: _selectedCategories[index],
          selectedColor: Colors.brown[800],
          backgroundColor: Colors.brown[100],
          labelStyle: TextStyle(
            color: _selectedCategories[index] ? Colors.white : Colors.black,
          ),
          onSelected: (bool selected) {
            setState(() {
              _selectedCategories[index] = selected;
            });
          },
        );
      }),
    );
  }

  Widget _buildPriceSlider() {
    return Column(
      children: [
        Slider(
          value: _selectedPrice,
          min: 50,
          max: 500,
          divisions: 4,
          activeColor: Colors.brown,
          inactiveColor: Colors.grey[300],
          onChanged: (value) {
            setState(() {
              _selectedPrice = value;
            });
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text("<P50"), Text("P100"), Text("P200"), Text("P500>")],
        ),
      ],
    );
  }

  Widget _buildApplyButton() {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.brown[800],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {},
          child: Text(
            "Apply",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
