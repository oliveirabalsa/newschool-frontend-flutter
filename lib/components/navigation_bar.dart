import 'package:flutter/material.dart';
import 'package:newschoolfrontendflutter/Screens/Private/Certificates/certificates_screen.dart';
import 'package:newschoolfrontendflutter/Screens/Private/Home/home_screen.dart';
import 'package:newschoolfrontendflutter/Screens/Public/Login/login_screen.dart';
import 'package:newschoolfrontendflutter/Screens/Public/Signup/signup_screen.dart';
import 'package:newschoolfrontendflutter/constants.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class NavigationBar extends StatefulWidget {
  final int index;

  const NavigationBar({Key key, this.index}) : super(key: key);
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return (BottomNavigationBar(
      elevation: 30.0,
      type: BottomNavigationBarType.fixed,
      currentIndex: (widget.index != null ? widget.index : 0),
      selectedItemColor: kPrimaryColor,
      unselectedItemColor: Colors.grey[600],
      selectedFontSize: 8,
      unselectedFontSize: 8,
      onTap: (int value) {
        setState(() {
          print(value);
          switch (value) {
            case 0:
              Navigator.pushReplacementNamed(context, '/home');
              break;
            case 1:
              Navigator.pushReplacementNamed(context, '/profile');
              // do something else
              break;
            case 2:
              Navigator.pushReplacementNamed(context, '/courses');
              // do something else
              break;
            case 3:
              Navigator.pushReplacementNamed(context, '/certificates');
              break;
            case 4:
              Scaffold.of(context).openDrawer();
              break;
          }
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
