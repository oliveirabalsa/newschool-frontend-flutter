import 'package:flutter/material.dart';
import 'package:newschoolfrontendflutter/components/course_card.dart';
import 'package:newschoolfrontendflutter/components/navigation_bar.dart';
import 'package:newschoolfrontendflutter/components/side_bar_navigator.dart';
import 'package:newschoolfrontendflutter/constants.dart';

class ShareCertificate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      drawerScrimColor: Colors.transparent,
      drawer: NavDrawer(),
      bottomNavigationBar: NavigationBar(
        index: 3,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: size.height * 0.05),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'JAVASCRIPT BÁSICO',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.005,
                  ),
                  Row(
                    children: [
                      Text(
                        'Marcela Tavares',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color.fromRGBO(26, 26, 26, 1),
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Montserrat',
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: size.height * 0.01),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: <Widget>[
                          Positioned(
                            top: 0,
                            left: 0,
                            bottom: 0,
                            right: 0,
                            child: Stack(
                              children: [
                                Center(
                                  child: Image.asset(
                                    "assets/images/medalha-imagem.png",
                                    fit: BoxFit.cover,
                                    width: 50,
                                    height: 60,
                                  ),
                                ),
                                Image.asset(
                                  "assets/images/transparent-mat.png",
                                  fit: BoxFit.cover,
                                  width: size.width * 0.85,
                                  height: size.height * 0.4,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      decoration: new BoxDecoration(
                        color: kPrimaryColor,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.black54,
                              blurRadius: 8.0,
                              offset: Offset(0.0, 3))
                        ],
                      ),
                      width: 292,
                      height: 167,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'COMPARTILHAR',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Color.fromRGBO(102, 0, 204, 0.5),
                                fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            color: Colors.purple[100],
                            child: Image.asset(
                              'assets/images/facebook-purple.png',
                              width: 15,
                              height: 15,
                            ),
                          ),
                          SizedBox(
                            width: 28,
                          ),
                          Container(
                            width: 35,
                            height: 35,
                            color: Colors.purple[100],
                            child: Image.asset(
                              'assets/images/instagram-purple.png',
                              width: 15,
                              height: 15,
                            ),
                          ),
                          SizedBox(
                            width: 28,
                          ),
                          Container(
                            width: 35,
                            height: 35,
                            color: Colors.purple[100],
                            child: Image.asset(
                              'assets/images/google-purple.png',
                              width: 15,
                              height: 15,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'EXPORTAR',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Color.fromRGBO(102, 0, 204, 0.5),
                                    fontSize: 12),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 35,
                                height: 35,
                                color: Colors.purple[100],
                                child: Image.asset(
                                  'assets/images/facebook-purple.png',
                                  width: 15,
                                  height: 15,
                                ),
                              ),
                              SizedBox(
                                width: 28,
                              ),
                              Container(
                                width: 35,
                                height: 35,
                                color: Colors.purple[100],
                                child: Image.asset(
                                  'assets/images/instagram-purple.png',
                                  width: 15,
                                  height: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
