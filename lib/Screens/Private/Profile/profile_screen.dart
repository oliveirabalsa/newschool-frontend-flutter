import 'package:flutter/material.dart';
import 'package:newschoolfrontendflutter/components/navigation_bar.dart';
import 'package:newschoolfrontendflutter/components/side_bar_navigator.dart';
import 'package:newschoolfrontendflutter/constants.dart';

class ProfileScreen extends StatelessWidget {
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
            'MEU PERFIL',
            style: TextStyle(
                color: kPrimaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w900),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.01,
              ),
              Center(
                  child: Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color(0xFF82E2BA)),
                child: Center(
                    child: Text(
                  'L',
                  style: TextStyle(
                      fontSize: 53,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(0, 0, 0, 0.5)),
                )),
              )),
              SizedBox(
                height: size.height * 0.04,
              ),
              Text(
                'Leonardo'.toUpperCase(),
                style: TextStyle(
                    fontSize: 20,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                'Aluno'.toUpperCase(),
                style: TextStyle(
                    fontSize: 11,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w400),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 51.0),
                child: SimpleCard(
                  text: 'Alterar Senha',
                  color: kSecondColor,
                  hasIcon: true,
                  onPress: () {
                    Navigator.of(context)
                        .pushReplacementNamed('/alterar-senha');
                  },
                ),
              ),
              SimpleCard(
                text: 'Alterar Dados',
                color: kSecondColor,
                hasIcon: true,
                onPress: () {
                  Navigator.of(context).pushReplacementNamed('/alterar-dados');
                },
              ),
              SimpleCard(
                text: 'Sair',
                color: Colors.red,
                onPress: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
              )
            ],
          ),
        ));
  }
}

class SimpleCard extends StatelessWidget {
  final String text;
  final Color color;
  final bool hasIcon;
  final onPress;

  const SimpleCard({Key key, this.text, this.color, this.hasIcon, this.onPress})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 17),
      child: GestureDetector(
        onTap: onPress,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Text(
                  text.toUpperCase(),
                  style: TextStyle(
                      color: color, fontWeight: FontWeight.w400, fontSize: 11),
                  textAlign: TextAlign.center,
                ),
                hasIcon != null
                    ? RotationTransition(
                        turns: AlwaysStoppedAnimation(180 / 360),
                        child: Icon(
                          Icons.arrow_back,
                          size: 24,
                          color: kPrimaryColor,
                        ))
                    : SizedBox(
                        width: 24,
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
