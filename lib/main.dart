import 'package:flutter/material.dart';
import 'package:newschoolfrontendflutter/Screens/Private/Certificates/certificates_screen.dart';
import 'package:newschoolfrontendflutter/Screens/Private/Certificates/share_certificate.screen.dart';
import 'package:newschoolfrontendflutter/Screens/Private/ChangeUserData/change_user_data_screen.dart';
import 'package:newschoolfrontendflutter/Screens/Private/ChangeUserPassword/change_user_password_screen.dart';
import 'package:newschoolfrontendflutter/Screens/Private/Home/home_screen.dart';
import 'package:newschoolfrontendflutter/Screens/Public/Contact_us/contact_us_screen.dart';
import 'package:newschoolfrontendflutter/Screens/Public/Login/login_screen.dart';
import 'package:newschoolfrontendflutter/Screens/Public/Signup/signup_screen.dart';
import 'package:newschoolfrontendflutter/components/side_bar_navigator.dart';
import 'package:newschoolfrontendflutter/constants.dart';

import 'Screens/Private/Courses/courses_screen.dart';
import 'Screens/Private/Profile/profile_screen.dart';

void main() => runApp(MyApp());
var navContent;

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GlobalKey<NavigatorState> navigator = GlobalKey<NavigatorState>();
  Map<String, WidgetBuilder> _routes = <String, WidgetBuilder>{
    "/": (BuildContext context) => LoginScreen(),
    "/courses": (BuildContext context) => CourseScreen(),
    "/profile": (BuildContext context) => ProfileScreen(),
    "/signup": (BuildContext context) => SignUpScreen(),
    "/certificates": (BuildContext context) => CertificatesScreen(),
    "/home": (BuildContext context) => HomeScreen(),
    "/alterar-dados": (BuildContext context) => ChangeUserData(),
    "/alterar-senha": (BuildContext context) => ChangeUserPassword(),
    "/contact-us": (BuildContext context) => ContactUs(),
    "/share-certificate": (BuildContext context) => ShareCertificate(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigator,
      initialRoute: '/',
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
