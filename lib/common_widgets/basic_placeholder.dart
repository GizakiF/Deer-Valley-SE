import 'package:deer_valley_teahouse/constants/custom_colors.dart';
import 'package:deer_valley_teahouse/constants/screens.dart';
import 'package:flutter/material.dart';

class BasicPlaceholder extends StatefulWidget {
  final String placeholderTitle;
  final IconData? placeholderIcon;
  final Widget? contentWidget;
  final ListView listView;

  const BasicPlaceholder({
    super.key,
    this.placeholderTitle = "",
    this.placeholderIcon,
    this.contentWidget,
    required this.listView,
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
              _backButton(),
              Positioned(top: 20, left: 0, right: 0, child: _topPortion()),
              Positioned(
                top: 90,
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
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(borderRadius),
            topRight: Radius.circular(borderRadius),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: widget.listView,
        ),
      ),
    );
  }

  Widget _rowItems() {
    return Row();
  }

  Widget _backButton() {
    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Screens.homeScreen()),
          );
        },
        icon: Icon(Icons.chevron_left, color: Colors.white),
      ),
    );
  }
}
