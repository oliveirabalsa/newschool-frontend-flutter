import 'package:flutter/material.dart';
import 'package:newschoolfrontendflutter/constants.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';

class SelectInput extends StatelessWidget {
  final String hintText;
  final String labelText;
  final icon;
  final ValueChanged<String> onChanged;

  const SelectInput(
      {Key key,
      this.hintText,
      this.labelText,
      this.onChanged,
      this.icon,
      EdgeInsets contentPadding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = new TextEditingController();
    var names = ["Ex-aluno", "Universitário", "Pai", "Investidor", "Outros"];

    return Container(
      child: Column(
        children: [
          new Container(
            child: new Column(
              children: [
                new Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: new Row(
                    children: <Widget>[
                      Expanded(
                          child: TextField(
                        controller: _controller,
                        decoration: InputDecoration(
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.arrow_drop_down,
                              color: kPrimaryColor,
                            ),
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: hintText,
                          hintStyle: new TextStyle(
                              height: 1.5,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: kSecondColor),
                          enabledBorder: new UnderlineInputBorder(
                              borderSide: new BorderSide(
                                  color: kPrimaryColor, width: 2)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: new BorderSide(
                                  color: kPrimaryColor, width: 2)),
                        ),
                      )),
                      // new PopupMenuButton<String>(
                      //   icon: const Icon(
                      //     Icons.arrow_drop_down,
                      //     color: kPrimaryColor,
                      //   ),
                      //   onSelected: (String value) {
                      //     _controller.text = value;
                      //   },
                      //   itemBuilder: (BuildContext context) {
                      //     return names
                      //         .map<PopupMenuItem<String>>((String value) {
                      //       return new PopupMenuItem(
                      //           child: new Text(value), value: value);
                      //     }).toList();
                      //   },
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
