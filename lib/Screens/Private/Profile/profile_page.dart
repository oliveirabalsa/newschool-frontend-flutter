import 'package:flutter/material.dart';
import 'package:newschoolfrontendflutter/components/navigation_bar.dart';
import 'package:newschoolfrontendflutter/components/side_bar_navigator.dart';
import 'package:newschoolfrontendflutter/constants.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      bottomNavigationBar: NavigationBar(
        index: 1,
      ),
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Text('PROFILE'),
      ),
    );
  }
}
