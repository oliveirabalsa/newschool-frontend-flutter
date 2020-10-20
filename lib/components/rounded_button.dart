import 'package:flutter/material.dart';
import 'package:newschoolfrontendflutter/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final bool hasBorderRadius;
  final double fontSize;
  final Function press;
  final Color color, textColor, borderColor;
  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
    this.borderColor,
    this.fontSize,
    this.hasBorderRadius,
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
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: borderColor, width: 1, style: BorderStyle.solid),
              borderRadius:
                  BorderRadius.circular(hasBorderRadius != null ? 5 : 0)),
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w900,
                fontSize: fontSize),
          ),
        ),
      ),
    );
  }
}
