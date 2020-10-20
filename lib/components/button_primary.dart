import 'package:flutter/material.dart';
import 'package:newschoolfrontendflutter/constants.dart';

class ButtonPrimary extends StatelessWidget {
  final String text;
  final Function press;
  final bool hasBorderRadius;
  final Color color, textColor;
  const ButtonPrimary({
    Key key,
    this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
    this.hasBorderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(color: Colors.grey[500], blurRadius: 2, offset: Offset(0, 2))
      ]),
      margin: EdgeInsets.symmetric(vertical: 8),
      width: size.width * 0.8,
      child: ClipRRect(
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: color,
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: Colors.white, width: 2, style: BorderStyle.solid),
              borderRadius:
                  BorderRadius.circular(hasBorderRadius != null ? 10 : 0)),
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(
                color: textColor, fontWeight: FontWeight.w800, fontSize: 12),
          ),
        ),
      ),
    );
  }
}
