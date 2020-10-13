import 'package:flutter/material.dart';
import 'package:newschoolfrontendflutter/components/text_field_container.dart';
import 'package:newschoolfrontendflutter/constants.dart';

class RoundedPasswordField extends StatefulWidget {
  final String hintText;
  final validator;
  final iconPressed;
  final icon;
  final ValueChanged<String> onChanged;
  final String isObscure;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
    this.hintText,
    this.validator,
    this.iconPressed,
    this.icon,
    this.isObscure,
  }) : super(key: key);

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: size.width * 0.8,
        child: new Theme(
            data: new ThemeData(
              textSelectionColor: Colors.white,
              primaryColor: Colors.red,
              accentColor: Colors.orange,
              hintColor: Colors.white,
            ),
            child: new TextFormField(
              validator: widget.validator,
              textAlignVertical: TextAlignVertical.bottom,
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 0.7),
                  fontSize: 12,
                  fontWeight: FontWeight.w700),
              obscureText: widget.isObscure == "true" ? true : false,
              onChanged: widget.onChanged,
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  color: Colors.white,
                  icon: Icon(widget.icon),
                  onPressed: widget.iconPressed,
                ),
                hintText: widget.hintText,
                hintStyle: new TextStyle(fontWeight: FontWeight.w700),
                labelStyle: new TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Montserrat'),
                enabledBorder: new UnderlineInputBorder(
                    borderSide: new BorderSide(color: Colors.white, width: 2)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: new BorderSide(color: Colors.white, width: 2)),
              ),
            )));
  }
}
