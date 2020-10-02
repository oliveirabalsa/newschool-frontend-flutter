import 'package:flutter/material.dart';
import 'package:newschoolfrontendflutter/components/text_field_container.dart';
import 'package:newschoolfrontendflutter/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: size.width * 0.8,
        child: new Theme(
            data: new ThemeData(
                primaryColor: Colors.red,
                accentColor: Colors.orange,
                hintColor: Colors.white),
            child: new TextField(
              onChanged: onChanged,
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                hintText: hintText,
                labelStyle: new TextStyle(color: const Color(0xFF424242)),
                enabledBorder: new UnderlineInputBorder(
                    borderSide: new BorderSide(color: Colors.white)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: new BorderSide(color: Colors.white)),
              ),
            )));
  }
}
