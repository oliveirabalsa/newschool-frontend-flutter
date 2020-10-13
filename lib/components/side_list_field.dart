import 'package:flutter/material.dart';
import 'package:newschoolfrontendflutter/constants.dart';

class SideField extends StatelessWidget {
  final String text;
  final icon;
  final Function onTap;

  const SideField({Key key, this.text, this.icon, this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: new BoxDecoration(
          border: Border.all(color: Color.fromRGBO(230, 230, 230, 1))),
      child: ListTile(
        leading: Icon(
          icon,
          color: kPrimaryColor,
        ),
        title: Text(
          text,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(115, 115, 115, 1)),
        ),
        onTap: onTap,
      ),
    );
  }
}
