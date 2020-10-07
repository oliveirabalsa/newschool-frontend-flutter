import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String courseName;
  final String courseAuthor;
  final String courseImage;

  const CourseCard(
      {Key key, this.courseName, this.courseAuthor, this.courseImage})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        width: size.width * 0.8,
        height: size.height * 0.33,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(courseImage), fit: BoxFit.cover)),
              alignment: Alignment.topRight,
              width: size.width * 0.8,
              height: size.height * 0.23,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Text(
                          courseName,
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(26, 26, 26, 1),
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat',
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Text(
                            courseAuthor,
                            style: TextStyle(
                              fontSize: 13,
                              color: Color.fromRGBO(26, 26, 26, 1),
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Montserrat',
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 8,
                    top: 8,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/icons/share_24px_outlined.png"),
                                  fit: BoxFit.cover)),
                          width: 24,
                          height: 24,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
