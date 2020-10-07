import 'package:flutter/material.dart';
import 'package:newschoolfrontendflutter/constants.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return (BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: kPrimaryColor,
      unselectedItemColor: Colors.grey[600],
      selectedFontSize: 12,
      unselectedFontSize: 12,
      onTap: (value) {
        // Respond to item press.
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
