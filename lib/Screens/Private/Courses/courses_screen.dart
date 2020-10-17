import 'package:flutter/material.dart';
import 'package:newschoolfrontendflutter/components/navigation_bar.dart';
import 'package:newschoolfrontendflutter/components/side_bar_navigator.dart';
import 'package:newschoolfrontendflutter/constants.dart';

class CourseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerScrimColor: Colors.transparent,
      drawer: NavDrawer(),
      bottomNavigationBar: NavigationBar(
        index: 2,
      ),
      backgroundColor: kPrimaryColor,
      body: Center(child: Text('Courses')),
    );
  }
}
