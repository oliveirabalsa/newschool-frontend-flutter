import 'package:flutter/material.dart';
import 'package:newschoolfrontendflutter/Screens/Private/Certificates/certificates_screen.dart';
import 'package:newschoolfrontendflutter/Screens/Private/Home/home_screen.dart';
import 'package:newschoolfrontendflutter/Screens/Public/Login/login_screen.dart';
import 'package:newschoolfrontendflutter/Screens/Public/Signup/signup_screen.dart';
import 'package:newschoolfrontendflutter/constants.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int index;
  @override
  Widget build(BuildContext context) {
    return (BottomNavigationBar(
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      currentIndex: (index != null ? index : 0),
      selectedItemColor: kPrimaryColor,
      unselectedItemColor: Colors.grey[600],
      selectedFontSize: 12,
      unselectedFontSize: 12,
      onTap: (int value) {
        setState(() {
          print(value);
          switch (value) {
            case 0:
              Navigator.pushNamed(context, '/home');
              break;
            case 1:
              // do something else
              break;
            case 2:
              // do something else
              break;
            case 3:
              // Navigator.pushNamed(context, '/certificates');
              break;
            case 4:
              Scaffold.of(context).openDrawer();
              break;
          }
          print(index);
          index = value;
        });
      },
      items: [
        BottomNavigationBarItem(
          title: Text('Home'),
          icon: Icon(Icons.home),
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
            title: Text('Perfil'), icon: Icon(Icons.perm_identity)),
        BottomNavigationBarItem(
            title: Text('Meus cursos'), icon: Icon(OMIcons.localLibrary)),
        BottomNavigationBarItem(
          title: Text('Certificados'),
          icon: Icon(OMIcons.school),
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          title: Text('Outros'),
          icon: Icon(Icons.apps),
        ),
      ],
    ));
  }
}
