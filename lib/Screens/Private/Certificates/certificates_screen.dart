import 'package:flutter/material.dart';
import 'package:newschoolfrontendflutter/components/course_card.dart';
import 'package:newschoolfrontendflutter/components/navigation_bar.dart';
import 'package:newschoolfrontendflutter/components/side_bar_navigator.dart';
import 'package:newschoolfrontendflutter/constants.dart';

class CertificatesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        title: Text(
          'MEUS CERTIFICADOS',
          style: TextStyle(
              color: kPrimaryColor, fontSize: 16, fontWeight: FontWeight.w900),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      drawerScrimColor: Colors.transparent,
      drawer: NavDrawer(),
      bottomNavigationBar: NavigationBar(
        index: 3,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: size.height * 0.01),
              //COMPONENTE AQUI VVVVVVV
              CourseCard(
                courseName: 'Matemática na Prática',
                courseAuthor: 'Marcela Tavares',
                certificateImagePath: "assets/images/transparent-mat.png",
                courseImage: "assets/images/paint.png",
                isCertificate: true,
                alignment: Alignment.topCenter,
                width: size.width * 0.6,
                height: size.height * 0.33,
              ),
              CourseCard(
                courseName: 'Fotografia na Raça',
                courseAuthor: 'Marcela Tavares',
                courseImage: "assets/images/fotografia.png",
                isCertificate: true,
                certificateImagePath: "assets/images/transparent-photo.png",
                alignment: Alignment.topCenter,
                width: size.width * 0.6,
                height: size.height * 0.33,
              ),
              CourseCard(
                courseName: 'O que fazer com sua grana?',
                courseAuthor: 'Thiago Moraes',
                certificateImagePath: "assets/images/transparent-grana.png",
                isCertificate: true,
                courseImage: "assets/images/moeda.png",
                alignment: Alignment.topCenter,
                width: size.width * 0.6,
                height: size.height * 0.33,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
