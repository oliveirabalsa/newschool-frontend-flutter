import 'package:newschoolfrontendflutter/Screens/Private/Certificates/certificates_screen.dart';
import 'package:newschoolfrontendflutter/Screens/Private/Home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:newschoolfrontendflutter/Screens/Public/Login/login_screen.dart';
import 'package:newschoolfrontendflutter/Screens/Public/Signup/signup_screen.dart';
import 'package:newschoolfrontendflutter/components/navigation_bar.dart';
import 'package:newschoolfrontendflutter/components/side_bar_navigator.dart';
import 'package:newschoolfrontendflutter/constants.dart';

void main() => runApp(MyApp());
var navContent;

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  excludeBottomNavigationBar() {
    return Container(
      height: 0.0,
    );
  }

  GlobalKey<NavigatorState> navigator = new GlobalKey<NavigatorState>();
  Map<String, WidgetBuilder> _routes = <String, WidgetBuilder>{
    "/": (BuildContext context) => new LoginScreen(),
    "/signup": (BuildContext context) => new SignUpScreen(),
    "/certificates": (BuildContext context) => new CertificatesScreen(),
    "/home": (BuildContext context) => new HomeScreen(),
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
        print(context);
        return Scaffold(
          drawerScrimColor: Colors.transparent,
          drawer: NavDrawer(),
          bottomNavigationBar: navContent,
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
