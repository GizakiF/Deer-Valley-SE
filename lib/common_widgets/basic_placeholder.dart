import 'package:deer_valley_teahouse/constants/custom_colors.dart';
import 'package:deer_valley_teahouse/constants/screens.dart';
import 'package:flutter/material.dart';

class BasicPlaceholder extends StatefulWidget {
  final String placeholderTitle;
  final IconData? placeholderIcon;
  final Widget? contentWidget;
  final ListView listView;
  final List<Widget> navigationItems;

  const BasicPlaceholder({
    super.key,
    this.placeholderTitle = "",
    this.placeholderIcon,
    this.contentWidget,
    required this.listView,
    this.navigationItems = const [],
  });

  @override
  State<BasicPlaceholder> createState() => _BasicPlaceholderState();
}

class _BasicPlaceholderState extends State<BasicPlaceholder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: CustomColors.brown,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Positioned(top: 30, child: _backButton()),
              Positioned(top: 30, left: 0, right: 0, child: _topPortion()),
              Positioned(
                top: 100,
                bottom: 0,
                left: 0,
                right: 0,
                child: _bottomPortion(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _topPortion() {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(widget.placeholderIcon, color: Colors.white, size: 40),
          SizedBox(width: 20),
          Text(
            widget.placeholderTitle,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 36,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _bottomPortion() {
    const double borderRadius = 30.0;
    const double padding = 30.0;
    return SizedBox(
      width: double.infinity,
      child: Card(
        margin: EdgeInsets.only(left: 5, right: 5),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(borderRadius),
            topRight: Radius.circular(borderRadius),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: Column(
            children: [
              Row(children: widget.navigationItems),
              Divider(color: CustomColors.brown),
              Expanded(child: widget.listView),
            ],
          ),
        ),
      ),
    );
  }

  Widget _backButton() {
    return Align(
      child: IconButton(
        alignment: Alignment.topLeft,
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Screens.mainScreen()),
          );
        },
        icon: Icon(Icons.chevron_left, color: Colors.white),
      ),
    );
  }
}
