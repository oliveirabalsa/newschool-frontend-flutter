import 'package:flutter/material.dart';
import 'package:newschoolfrontendflutter/constants.dart';

class TextFieldInput extends StatelessWidget {
  final String hintText;
  final String labelText;
  final icon;
  final ValueChanged<String> onChanged;

  const TextFieldInput(
      {Key key,
      this.hintText,
      this.labelText,
      this.onChanged,
      this.icon,
      EdgeInsets contentPadding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: Container(
          width: size.width * 0.8,
          child: new Theme(
              data: new ThemeData(
                textSelectionColor: kPrimaryColor,
                primaryColor: Colors.red,
                accentColor: Colors.orange,
                hintColor: kPrimaryColor,
              ),
              child: new TextField(
                enableInteractiveSelection: false,
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Icon(
                      icon,
                      color: kPrimaryColor,
                    ),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: labelText,
                  hintText: hintText,
                  hintStyle: new TextStyle(
                      height: 1.3,
                      fontWeight: FontWeight.bold,
                      color: kSecondColor),
                  labelStyle: new TextStyle(
                      color: kPrimaryColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  enabledBorder: new UnderlineInputBorder(
                      borderSide:
                          new BorderSide(color: kPrimaryColor, width: 2)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide:
                          new BorderSide(color: kPrimaryColor, width: 2)),
                ),
              ))),
    );
  }
}
