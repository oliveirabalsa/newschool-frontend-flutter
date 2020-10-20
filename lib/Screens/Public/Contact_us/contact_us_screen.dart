import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newschoolfrontendflutter/components/button_primary.dart';
import 'package:newschoolfrontendflutter/components/navigation_bar.dart';
import 'package:newschoolfrontendflutter/components/side_bar_navigator.dart';
import 'package:newschoolfrontendflutter/components/text_field_input.dart';

import '../../../constants.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();

  bool isAproved;
}

class _ContactUsState extends State<ContactUs> {
  final _formKey = GlobalKey<FormState>();
  RegExp emailValidator = new RegExp(r'.+@.+\..+');

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
          'FALE CONSOCO',
          style: TextStyle(
              color: kPrimaryColor, fontSize: 16, fontWeight: FontWeight.w900),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Center(
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35.0),
                        child: SvgPicture.asset(
                          "assets/images/contact-us.svg",
                          width: 250,
                          height: 210.57,
                        ),
                      ),
                    ),
                    TextFieldInput(
                      validator: (val) =>
                          val.isEmpty ? 'O campo não pode estar vazio' : null,
                      hintText: 'Nome',
                    ),
                    TextFieldInput(
                      validator: (val) => !emailValidator.hasMatch(val)
                          ? 'Email inválido'
                          : null,
                      hintText: 'Email',
                    ),
                    TextFieldInput(
                      validator: (val) =>
                          val.isEmpty ? 'O campo não pode estar vazio' : null,
                      hintText: 'Mensagem',
                    ),
                    SizedBox(
                      height: 34,
                    ),
                    ButtonPrimary(
                      color: kPrimaryColor,
                      text: 'ENVIAR',
                      textColor: Colors.white,
                      press: () {
                        if (_formKey.currentState.validate()) {
                          setState(() {
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
                            Timer(Duration(seconds: 2),
                                () => Navigator.of(context).pushNamed('/home'));
                          });
                        }
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
