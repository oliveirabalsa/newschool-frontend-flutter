import 'package:flutter/material.dart';
import 'package:newschoolfrontendflutter/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool isObscure;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
    this.isObscure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: size.width * 0.8,
        child: new Theme(
            data: new ThemeData(
              textSelectionColor: Colors.white,
              primaryColor: Colors.red,
              accentColor: Colors.orange,
              hintColor: Colors.white,
            ),
            child: new TextField(
              textAlignVertical: TextAlignVertical.bottom,
              style: TextStyle(color: Colors.white, fontSize: 16),
              obscureText: (isObscure != null ? true : false),
              onChanged: onChanged,
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: new TextStyle(fontWeight: FontWeight.bold),
                labelStyle: new TextStyle(
                    color: const Color(0xFFFFFFFF),
                    fontWeight: FontWeight.bold),
                enabledBorder: new UnderlineInputBorder(
                    borderSide: new BorderSide(color: Colors.white, width: 2)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: new BorderSide(color: Colors.white, width: 2)),
              ),
            )));
  }
}
