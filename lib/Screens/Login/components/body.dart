import 'package:flutter/material.dart';
import 'package:newschoolfrontendflutter/Screens/Home/home_screen.dart';
import 'package:newschoolfrontendflutter/Screens/Login/components/background.dart';
import 'package:newschoolfrontendflutter/Screens/Signup/signup_screen.dart';
import 'package:newschoolfrontendflutter/components/rounded_button.dart';
import 'package:newschoolfrontendflutter/components/rounded_button_white.dart';
import 'package:newschoolfrontendflutter/Screens/Login/components/or_divider.dart';
import 'package:newschoolfrontendflutter/Screens/Login/components/social_icon.dart';
import 'package:newschoolfrontendflutter/components/rounded_input_field.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    String email = '';
    String password = '';
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/images/logo.svg",
              height: size.height * 0.10,
              width: 10,
              color: Colors.white,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedInputField(
              hintText: "E-mail",
              onChanged: (value) {
                email = value;
              },
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              isObscure: true,
              hintText: "Senha",
              onChanged: (value) {
                password = value;
              },
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButtonWhite(
              text: "CADASTRAR",
              press: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SignUpScreen()));
              },
            ),
            RoundedButton(
              text: "ENTRAR",
              press: () {
                if (email == 'leo@leo.com' && password == '123456') {
                  print('siii');
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                }
              },
            ),
            SizedBox(height: size.height * 0.03),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
