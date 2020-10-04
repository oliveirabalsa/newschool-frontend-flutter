import 'package:flutter/material.dart';
import 'package:newschoolfrontendflutter/constants.dart';

class ButtonPrimary extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const ButtonPrimary({
    Key key,
    this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      width: size.width * 0.8,
      child: ClipRRect(
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: color,
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: Colors.white, width: 2, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(10)),
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
