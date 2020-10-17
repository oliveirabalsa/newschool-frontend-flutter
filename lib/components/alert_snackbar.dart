import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  final String message;

  const Alert({Key key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SnackBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        duration: Duration(seconds: 2),
        content: Stack(
          children: [
            Positioned(
              top: size.height * 0.02,
              child: Container(
                width: size.width * 0.9,
                height: size.height * 0.05,
                decoration: BoxDecoration(
                  color: Colors.green[800],
                ),
                padding: EdgeInsets.all(8.0),
                child: Text(
                  message,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ],
        ));
  }
}
