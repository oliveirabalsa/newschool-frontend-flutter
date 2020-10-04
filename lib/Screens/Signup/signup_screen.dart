import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newschoolfrontendflutter/Screens/Login/login_screen.dart';
import 'package:newschoolfrontendflutter/components/button_primary.dart';
import 'package:newschoolfrontendflutter/components/select_options_field.dart';
import 'package:newschoolfrontendflutter/components/text_field_input.dart';
import 'package:newschoolfrontendflutter/constants.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.04),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: SvgPicture.asset(
                    "assets/images/logo.svg",
                    height: size.height * 0.05,
                    width: 5,
                    color: kPrimaryColor,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.04),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          child: Text('CADASTRO',
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontFamily: 'Montserrat',
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                  decoration: TextDecoration.none)),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.01),
                    Material(
                      child: Column(
                        children: [
                          TextFieldInput(
                            hintText: 'Digite seu nome',
                            labelText: 'Qual é seu nome?',
                          ),
                          TextFieldInput(
                            hintText: 'Digite seu e-mail',
                            labelText: 'E o seu e-mail?',
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 4),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                child: Text('Qual seu perfil?',
                                    style: TextStyle(
                                        color: kPrimaryColor,
                                        fontFamily: 'Montserrat',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        decoration: TextDecoration.none)),
                              ),
                            ),
                          ),
                          SelectInput(
                            hintText: 'Selecione seu perfil',
                          ),
                          TextFieldInput(
                            hintText: 'Digite o nome da sua escola',
                            labelText: 'Onde estuda?',
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 22, top: 15),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                child: Text('Crie sua senha',
                                    style: TextStyle(
                                        color: kPrimaryColor,
                                        fontFamily: 'Montserrat',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        decoration: TextDecoration.none)),
                              ),
                            ),
                          ),
                          TextFieldInput(
                            hintText: 'Digite sua senha',
                            icon: Icons.visibility,
                          ),
                          TextFieldInput(
                            hintText: 'Confirme sua senha',
                            icon: Icons.visibility,
                          ),
                          SizedBox(height: size.height * 0.03),
                          ButtonPrimary(
                            text: 'CADASTRAR',
                            press: () {},
                          ),
                          SizedBox(height: size.height * 0.01),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: new GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                LoginScreen()));
                                  },
                                  child: Text(
                                    'Ops, ja tenho conta',
                                    style: TextStyle(
                                        color: kPrimaryColor,
                                        fontFamily: 'Montserrat',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.none),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
