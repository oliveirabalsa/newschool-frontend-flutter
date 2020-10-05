import 'package:flutter/material.dart';
import 'package:newschoolfrontendflutter/constants.dart';

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'Aluno';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22, right: 22),
      child: DropdownButton<String>(
        isExpanded: true,
        value: dropdownValue,
        icon: Icon(
          Icons.arrow_drop_down,
          color: kPrimaryColor,
        ),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(
            height: 1.3,
            fontWeight: FontWeight.bold,
            color: kSecondColor,
            fontSize: 16),
        underline: Container(
          height: 2,
          color: kPrimaryColor,
        ),
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>['Aluno', 'Ex-Aluno', 'Professor', 'Outros']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
