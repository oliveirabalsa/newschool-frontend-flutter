import 'package:flutter/material.dart';
import 'package:newschoolfrontendflutter/components/side_list_field.dart';
import 'package:newschoolfrontendflutter/constants.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          top: 0,
          child: Container(
            height: size.height,
            width: size.width,
            child: Drawer(
              elevation: 20,
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    child: Container(
                      width: 100,
                      height: 100,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Container(
                              width: size.width * 0.7,
                              height: 150,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      decoration: new BoxDecoration(
                                          border:
                                              Border.all(color: kPrimaryColor),
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                      width: 95,
                                      height: 95,
                                      child: Stack(
                                        children: [
                                          Align(
                                            child: Container(
                                              child: Text(
                                                'A',
                                                style: TextStyle(
                                                    fontSize: 30,
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 0.6)),
                                              ),
                                              alignment: Alignment.center,
                                              decoration: new BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.blue),
                                              width: 85,
                                              height: 85,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Stack(
                                    children: [
                                      Positioned(
                                        top: 20,
                                        left: size.width * 0.27,
                                        child: Container(
                                          child: Text(
                                            'Aluno',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 23,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 50,
                                        left: size.width * 0.27,
                                        child: Container(
                                          child: Text(
                                            'Visitante',
                                            style: TextStyle(
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Stack(
                            children: [
                              Positioned(
                                top: 35,
                                right: 10,
                                child: Container(
                                  child: RotationTransition(
                                      turns: AlwaysStoppedAnimation(45 / 360),
                                      child: Icon(
                                        Icons.add_circle,
                                        color: kPrimaryColor,
                                      )),
                                  width: 24,
                                  height: 24,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/cover.jpg'))),
                  ),
                  Column(
                    children: [
                      SideField(
                        text: 'MEU PERFIL',
                        icon: Icons.perm_identity,
                        onTap: () => {Navigator.pushNamed(context, '/profile')},
                      ),
                      SideField(
                        text: 'MEUS CURSOS',
                        icon: OMIcons.localLibrary,
                        onTap: () => {Navigator.pushNamed(context, '/courses')},
                      ),
                      SideField(
                        text: 'MEUS CERTIFICADOS',
                        icon: OMIcons.school,
                        onTap: () =>
                            {Navigator.pushNamed(context, '/certificates')},
                      ),
                      SideField(
                        text: 'CONTRIBUA',
                        icon: OMIcons.touchApp,
                        onTap: () => {},
                      ),
                      SideField(
                        text: 'SOBRE',
                        icon: OMIcons.libraryBooks,
                        onTap: () => {},
                      ),
                      SideField(
                        text: 'AJUDA',
                        icon: OMIcons.panTool,
                        onTap: () => {},
                      ),
                      SideField(
                        text: 'CONTATO',
                        icon: OMIcons.permPhoneMsg,
                        onTap: () =>
                            {Navigator.pushNamed(context, '/contact-us')},
                      ),
                      SideField(
                        text: 'IMPRENSA',
                        icon: OMIcons.volumeUp,
                        onTap: () => {},
                      ),
                      SideField(
                        text: 'INVESTIDORES',
                        icon: OMIcons.attachMoney,
                        onTap: () => {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
