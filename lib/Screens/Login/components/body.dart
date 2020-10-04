import 'package:flutter/material.dart';
import 'package:newschoolfrontendflutter/Screens/Login/components/background.dart';
import 'package:newschoolfrontendflutter/Screens/Signup/signup_screen.dart';
import 'package:newschoolfrontendflutter/components/rounded_button.dart';
import 'package:newschoolfrontendflutter/components/rounded_button_white.dart';
import 'package:newschoolfrontendflutter/Screens/Login/components/or_divider.dart';
import 'package:newschoolfrontendflutter/Screens/Login/components/social_icon.dart';
import 'package:newschoolfrontendflutter/components/rounded_input_field.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              onChanged: (value) {},
            ),
            SizedBox(height: size.height * 0.05),
            RoundedInputField(
              hintText: "Senha",
              onChanged: (value) {},
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButtonWhite(
              text: "CADASTRAR",
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => SignUpScreen()));
              },
            ),
            RoundedButton(
              text: "ENTRAR",
              press: () {},
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
