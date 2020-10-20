import 'package:flutter/material.dart';
import 'package:newschoolfrontendflutter/components/course_progress.dart';
import 'package:newschoolfrontendflutter/components/navigation_bar.dart';
import 'package:newschoolfrontendflutter/components/side_bar_navigator.dart';
import 'package:newschoolfrontendflutter/constants.dart';

class CourseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        title: Text(
          'MEUS CURSOS',
          style: TextStyle(
              color: kPrimaryColor, fontSize: 16, fontWeight: FontWeight.w900),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      drawerScrimColor: Colors.transparent,
      drawer: NavDrawer(),
      bottomNavigationBar: NavigationBar(
        index: 2,
      ),
      body: Column(
        children: [
          ProgressCard(courseName: 'Javascript Básico', progress: 0.75),
          ProgressCard(courseName: 'Javascript Básico', progress: 1),
        ],
      ),
    );
  }
}
