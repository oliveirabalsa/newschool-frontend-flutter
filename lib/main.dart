import 'package:newschoolfrontendflutter/Screens/Private/Certificates/certificates_screen.dart';
import 'package:newschoolfrontendflutter/Screens/Private/Home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:newschoolfrontendflutter/Screens/Public/Login/login_screen.dart';
import 'package:newschoolfrontendflutter/Screens/Public/Signup/signup_screen.dart';
import 'package:newschoolfrontendflutter/components/side_bar_navigator.dart';
import 'package:newschoolfrontendflutter/constants.dart';

import 'Screens/Private/Courses/courses_screen.dart';
import 'Screens/Private/Profile/profile_page.dart';

void main() => runApp(MyApp());
var navContent;

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GlobalKey<NavigatorState> navigator = new GlobalKey<NavigatorState>();
  Map<String, WidgetBuilder> _routes = <String, WidgetBuilder>{
    "/": (BuildContext context) => new LoginScreen(),
    "/courses": (BuildContext context) => new CourseScreen(),
    "/profile": (BuildContext context) => new ProfileScreen(),
    "/signup": (BuildContext context) => new SignUpScreen(),
    "/certificates": (BuildContext context) => new CertificatesScreen(),
    "/home": (BuildContext context) => new HomeScreen(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigator,
      initialRoute: '/certificates',
      routes: _routes,
      debugShowCheckedModeBanner: false,
      title: 'New School',
      builder: (context, child) {
        return Scaffold(
          drawerScrimColor: Colors.transparent,
          drawer: NavDrawer(),
          // bottomNavigationBar: navContent,
          body: child,
        );
      },
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Montserrat'),
    );
  }
}
