import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newschoolfrontendflutter/components/button_primary.dart';
import 'package:newschoolfrontendflutter/components/navigation_bar.dart';
import 'package:newschoolfrontendflutter/components/side_bar_navigator.dart';
import 'package:newschoolfrontendflutter/components/text_field_input.dart';

import '../../../constants.dart';

class ChangeUserPassword extends StatefulWidget {
  @override
  _ChangeUserPasswordState createState() => _ChangeUserPasswordState();

  bool isAproved;
}

class _ChangeUserPasswordState extends State<ChangeUserPassword> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      bottomNavigationBar: NavigationBar(
        index: 1,
      ),
      appBar: AppBar(
        shadowColor: Colors.transparent,
        title: Text(
          'ALTERAR A SENHA',
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
                Container(
                  child: SvgPicture.asset(
                    "assets/images/security.svg",
                    width: 295,
                    height: 210.57,
                  ),
                ),
                widget.isAproved == null
                    ? Column(
                        children: [
                          TextFieldInput(
                            validator: (val) =>
                                val.length < 6 ? 'Senha muito curta' : null,
                            hintText: 'Senha Atual',
                          ),
                          TextFieldInput(
                            validator: (val) =>
                                val.length < 6 ? 'Senha muito curta' : null,
                            hintText: 'Nova Senha',
                          ),
                          TextFieldInput(
                            validator: (val) =>
                                val.length < 6 ? 'Senha muito curta' : null,
                            hintText: 'Confirmar Nova Senha',
                          ),
                          SizedBox(
                            height: 34,
                          ),
                          ButtonPrimary(
                            color: kPrimaryColor,
                            text: 'ALTERAR SENHA',
                            textColor: Colors.white,
                            press: () {
                              if (_formKey.currentState.validate()) {
                                setState(() {
                                  widget.isAproved = true;

                                  Timer(
                                      Duration(seconds: 2),
                                      () => Navigator.of(context)
                                          .pushNamed('/home'));
                                });
                              }
                            },
                          )
                        ],
                      )
                    : Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 63,
                            ),
                            Text(
                              'SENHA ATUALIZADA COM SUCESSO!',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: kSecondColor),
                            )
                          ],
                        ),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
