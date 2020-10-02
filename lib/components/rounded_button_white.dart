import 'package:flutter/material.dart';
import 'package:newschoolfrontendflutter/constants.dart';

class RoundedButtonWhite extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButtonWhite({
    Key key,
    this.text,
    this.press,
    this.color = Colors.white,
    this.textColor = kPrimaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: color,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(
                color: textColor, fontWeight: FontWeight.w800, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
