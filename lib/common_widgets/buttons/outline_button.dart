import 'package:deer_valley_teahouse/constants/utf.dart';
import 'package:flutter/material.dart';

class OutlineButton extends StatefulWidget {
  final String buttonIcon;
  final String buttonText;
  final Widget? destination;
  const OutlineButton({
    super.key,
    this.buttonIcon = CustomUTF.teaUtf,
    this.buttonText = "Button",
    this.destination,
  });

  @override
  State<OutlineButton> createState() => _OutlineButtonState();
}

class _OutlineButtonState extends State<OutlineButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      child: ElevatedButton(
        //TODO: find a way to not only navigate through screens but also to have certain funnctions
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          side: BorderSide(color: Colors.black),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: [
              // SvgPicture.asset(widget.buttonIcon),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: "${widget.buttonIcon}  "),
                    TextSpan(text: widget.buttonText),
                  ],
                ),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
