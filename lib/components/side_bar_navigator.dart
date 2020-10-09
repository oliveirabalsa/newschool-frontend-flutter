import 'package:flutter/material.dart';
import 'package:newschoolfrontendflutter/constants.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
      elevation: 0.0,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(
              color: Colors.blue[100],
              width: 100,
              height: 100,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Container(
                      width: size.width * 0.7,
                      height: 150,
                      color: Colors.red,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              decoration: new BoxDecoration(
                                  border: Border.all(color: kPrimaryColor),
                                  shape: BoxShape.circle,
                                  color: Colors.white),
                              width: 95,
                              height: 95,
                              child: Stack(
                                children: [
                                  Align(
                                    child: Container(
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/cover.jpg'))),
          ),

          //CONTEINERIZAR
          ////////////////////////////////////////////////////////////
          Container(
            decoration: new BoxDecoration(
                border: Border.all(color: Color.fromRGBO(230, 230, 230, 1))),
            child: ListTile(
              leading: Icon(
                Icons.perm_identity,
                color: kPrimaryColor,
              ),
              title: Text(
                'MEU PERFIL',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(115, 115, 115, 1)),
              ),
              onTap: () => {},
            ),
          ),
          //////////////////////////////////////////////////////////////////////////
          Container(
            decoration: new BoxDecoration(
                border: Border.all(color: Color.fromRGBO(230, 230, 230, 1))),
            child: ListTile(
              leading: Icon(
                OMIcons.localLibrary,
                color: kPrimaryColor,
              ),
              title: Text(
                'MEUS CURSOS',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(115, 115, 115, 1)),
              ),
              onTap: () => {Navigator.of(context).pop()},
            ),
          ),
          Container(
            decoration: new BoxDecoration(
                border: Border.all(color: Color.fromRGBO(230, 230, 230, 1))),
            child: ListTile(
              leading: Icon(
                OMIcons.school,
                color: kPrimaryColor,
              ),
              title: Text(
                'MEUS CERTIFICADOS',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(115, 115, 115, 1)),
              ),
              onTap: () => {Navigator.of(context).pop()},
            ),
          ),
          Container(
            decoration: new BoxDecoration(
                border: Border.all(color: Color.fromRGBO(230, 230, 230, 1))),
            child: ListTile(
              leading: Icon(
                OMIcons.touchApp,
                color: kPrimaryColor,
              ),
              title: Text(
                'CONTRIBUA',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(115, 115, 115, 1)),
              ),
              onTap: () => {Navigator.of(context).pop()},
            ),
          ),
          Container(
            decoration: new BoxDecoration(
                border: Border.all(color: Color.fromRGBO(230, 230, 230, 1))),
            child: ListTile(
              leading: Icon(
                OMIcons.libraryBooks,
                color: kPrimaryColor,
              ),
              title: Text(
                'SOBRE',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(115, 115, 115, 1)),
              ),
              onTap: () => {Navigator.of(context).pop()},
            ),
          ),
          Container(
            decoration: new BoxDecoration(
                border: Border.all(color: Color.fromRGBO(230, 230, 230, 1))),
            child: ListTile(
              leading: Icon(
                OMIcons.panTool,
                color: kPrimaryColor,
              ),
              title: Text(
                'AJUDA',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(115, 115, 115, 1)),
              ),
              onTap: () => {},
            ),
          ),
          Container(
            decoration: new BoxDecoration(
                border: Border.all(color: Color.fromRGBO(230, 230, 230, 1))),
            child: ListTile(
              leading: Icon(
                OMIcons.permPhoneMsg,
                color: kPrimaryColor,
              ),
              title: Text(
                'CONTATO',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(115, 115, 115, 1)),
              ),
              onTap: () => {},
            ),
          ),
          Container(
            decoration: new BoxDecoration(
                border: Border.all(color: Color.fromRGBO(230, 230, 230, 1))),
            child: ListTile(
              leading: Icon(
                OMIcons.volumeUp,
                color: kPrimaryColor,
              ),
              title: Text(
                'IMPRENSA',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(115, 115, 115, 1)),
              ),
              onTap: () => {},
            ),
          ),
          Container(
            decoration: new BoxDecoration(
                border: Border.all(color: Color.fromRGBO(230, 230, 230, 1))),
            child: ListTile(
              leading: Icon(
                OMIcons.attachMoney,
                color: kPrimaryColor,
              ),
              title: Text(
                'INVESTIDORES',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(115, 115, 115, 1)),
              ),
              onTap: () => {},
            ),
          ),
        ],
      ),
    );
  }
}
