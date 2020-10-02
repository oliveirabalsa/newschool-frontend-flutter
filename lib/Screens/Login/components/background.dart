import 'package:flutter/material.dart';
import 'package:newschoolfrontendflutter/constants.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: new BoxDecoration(color: kPrimaryColor),
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            bottom: 0,
            right: 0,
            child: Image.asset(
              "assets/images/paraisopolis.png",
              fit: BoxFit.fill,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
