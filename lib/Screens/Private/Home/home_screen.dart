import 'package:flutter/material.dart';
import 'package:newschoolfrontendflutter/components/course_card.dart';
import 'package:newschoolfrontendflutter/components/navigation_bar.dart';
import 'package:newschoolfrontendflutter/components/side_bar_navigator.dart';
import 'package:newschoolfrontendflutter/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      drawerScrimColor: Colors.transparent,
      drawer: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
                width: size.width,
                height: size.height * 0.92,
                child: NavDrawer()),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: size.height * 0.03),
              Row(
                children: [
                  Text(
                    'OLÁ JOÃO',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Montserrat',
                    ),
                  )
                ],
              ),
              SizedBox(height: size.height * 0.0009),
              Row(
                children: [
                  Text(
                    'SEJA BEM VINDO',
                    style: TextStyle(
                      fontSize: 18,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Montserrat',
                    ),
                  )
                ],
              ),
              SizedBox(height: size.height * 0.03),
              Row(
                children: [
                  Text(
                    'CURSOS',
                    style: TextStyle(
                      fontSize: 16,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Montserrat',
                    ),
                  )
                ],
              ),
              SizedBox(height: size.height * 0.02),
              //COMPONENTE AQUI VVVVVVV
              CourseCard(
                courseName: 'Matemática na Prática',
                courseAuthor: 'Marcela Tavares',
                courseImage: "assets/images/paint.png",
              ),
              CourseCard(
                courseName: 'O que fazer com sua grana?',
                courseAuthor: 'Thiago Moraes',
                courseImage: "assets/images/moeda.png",
              ),
              CourseCard(
                courseName: 'Fotografia na Raça',
                courseAuthor: 'Marcela Tavares',
                courseImage: "assets/images/fotografia.png",
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }
}
