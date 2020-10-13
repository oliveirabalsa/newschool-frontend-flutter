import 'package:flutter/material.dart';
import 'package:newschoolfrontendflutter/constants.dart';

class TextFieldInput extends StatefulWidget {
  final String hintText;
  final String labelText;
  final bool isVisible;
  final icon;
  final ValueChanged<String> onChanged;

  const TextFieldInput({
    Key key,
    this.hintText,
    this.labelText,
    this.onChanged,
    this.icon,
    this.isVisible,
    EdgeInsets contentPadding,
  }) : super(key: key);

  @override
  _TextFieldInputState createState() => _TextFieldInputState();
}

class _TextFieldInputState extends State<TextFieldInput> {
  @override
  Widget build(BuildContext context) {
    bool show = widget.isVisible;
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
              child: TextField(
                obscureText: (widget.isVisible != null ? true : false),
                enableInteractiveSelection: false,
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Icon(
                        widget.icon,
                        color: kPrimaryColor,
                      ),
                    ),
                    onTap: () => {
                      setState(() {
                        print(show);
                      })
                    },
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: widget.labelText,
                  hintText: widget.hintText,
                  contentPadding: EdgeInsets.only(top: 15.0, bottom: 3),
                  isDense: true,
                  hintStyle: TextStyle(
                      height: 2,
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
