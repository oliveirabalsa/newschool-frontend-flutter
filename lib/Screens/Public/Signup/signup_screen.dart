import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newschoolfrontendflutter/Screens/Public/Login/login_screen.dart';
import 'package:newschoolfrontendflutter/components/alert_snackbar.dart';
import 'package:newschoolfrontendflutter/components/button_primary.dart';
import 'package:newschoolfrontendflutter/components/select_options_field.dart';
import 'package:newschoolfrontendflutter/components/text_field_input.dart';
import 'package:newschoolfrontendflutter/constants.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();

  RegExp emailValidator = new RegExp(r'.+@.+\..+');
}

class _SignUpScreenState extends State<SignUpScreen> {
  String dropdownValue = 'Aluno';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
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
            child: Form(
              key: _formKey,
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
                    color: Colors.white,
                    child: Column(
                      children: [
                        TextFieldInput(
                          validator: (val) =>
                              val.isEmpty ? 'Digite seu nome' : null,
                          hintText: 'Digite seu nome',
                          labelText: 'Qual é seu nome?',
                        ),
                        TextFieldInput(
                          hintText: 'Digite seu e-mail',
                          labelText: 'E o seu e-mail?',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 15),
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
                        Padding(
                          padding: const EdgeInsets.only(left: 21, right: 21),
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
                            items: <String>[
                              'Aluno',
                              'Ex-Aluno',
                              'Professor',
                              'Outros'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                        dropdownValue == 'Aluno'
                            ? TextFieldInput(
                                hintText: 'Digite o nome da sua escola',
                                labelText: 'Onde estuda?',
                              )
                            : SizedBox(
                                height: size.height * 0.0,
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
                          isVisible: true,
                        ),
                        TextFieldInput(
                          hintText: 'Confirme sua senha',
                          icon: Icons.visibility,
                          isVisible: true,
                        ),
                        SizedBox(height: size.height * 0.03),
                        ButtonPrimary(
                          text: 'CADASTRAR',
                          press: () {
                            if (_formKey.currentState.validate()) {
                              print('bom');
                              // Scaffold.of(context).showSnackBar(Alert(
                              //   message: 'Cadastro efetuado com sucesso 👍',
                              // ));
                            }
                            //   if (email.trim() == 'leo@leo.com' && password == '123456') {
                            //     print('siii');
                            //     Navigator.pushNamed(context, '/home');
                            // }
                          },
                        ),
                        SizedBox(height: size.height * 0.01),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: new GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/');
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
            ),
          )
        ],
      ),
    ));
  }
}
