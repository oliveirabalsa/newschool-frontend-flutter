import 'package:flutter/material.dart';
import 'package:newschoolfrontendflutter/components/alert_snackbar.dart';
import 'package:newschoolfrontendflutter/components/button_primary.dart';
import 'package:newschoolfrontendflutter/components/navigation_bar.dart';
import 'package:newschoolfrontendflutter/components/rounded_button.dart';
import 'package:newschoolfrontendflutter/components/side_bar_navigator.dart';
import 'package:newschoolfrontendflutter/components/text_field_input.dart';

import '../../../constants.dart';

class ChangeUserData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: NavDrawer(),
      bottomNavigationBar: NavigationBar(
        index: 1,
      ),
      appBar: AppBar(
        shadowColor: Colors.transparent,
        title: Text(
          'ALTERAR MEUS DADOS',
          style: TextStyle(
              color: kPrimaryColor, fontSize: 16, fontWeight: FontWeight.w900),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 38, right: 38),
          child: Column(
            children: [
              TextFieldInput(
                hintText: 'Leonardo Oliveira Balsalobre',
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              TextFieldInput(
                hintText: 'leonardo@leonardo.com',
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              TextFieldInput(
                hintText: 'www.facebook.com/leonardo',
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              TextFieldInput(
                hintText: 'www.instagram.com/leonardo',
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              ButtonPrimary(
                text: 'ALTERAR',
                press: () {
                  print('bom');
                  Scaffold.of(context).showSnackBar(SnackBar(
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
                                'Deu tudo certo 👍',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      )));
                  //   if (email.trim() == 'leo@leo.com' && password == '123456') {
                  //     print('siii');
                  //     Navigator.pushNamed(context, '/home');
                  // }
                },
              ),
              RoundedButton(
                text: "ALTERAR SENHA",
                textColor: kPrimaryColor,
                borderColor: kPrimaryColor,
                fontSize: 12,
                press: () {
                  Navigator.pushNamed(context, '/alterar-senha');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
