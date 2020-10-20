import 'package:flutter/material.dart';
import 'package:newschoolfrontendflutter/constants.dart';

class CourseCard extends StatelessWidget {
  final String courseName;
  final String courseAuthor;
  final String courseImage;
  final Alignment alignment;
  final Function onPress;
  final double width;
  final double height;
  final bool isCertificate;
  final String certificateImagePath;

  const CourseCard(
      {Key key,
      this.courseName,
      this.courseAuthor,
      this.courseImage,
      this.alignment,
      this.width,
      this.height,
      this.isCertificate,
      this.certificateImagePath,
      this.onPress})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Align(
      alignment: alignment,
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          width: width,
          height: height,
          child: Column(
            children: [
              isCertificate == null
                  ? Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(courseImage), fit: BoxFit.cover),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.black54,
                              blurRadius: 1.0,
                              offset: Offset(0.0, 0.75))
                        ],
                      ),
                      alignment: Alignment.topRight,
                      width: size.width * 0.8,
                      height: size.height * 0.23,
                    )
                  : Container(
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Positioned(
                            top: 0,
                            left: 0,
                            bottom: 0,
                            right: 0,
                            child: Stack(
                              children: [
                                Center(
                                  child: Image.asset(
                                    "assets/images/medalha-imagem.png",
                                    fit: BoxFit.cover,
                                    width: 34,
                                    height: 43.45,
                                  ),
                                ),
                                Image.asset(
                                  certificateImagePath != null
                                      ? certificateImagePath
                                      : null,
                                  fit: BoxFit.cover,
                                  width: size.width * 0.8,
                                  height: size.height * 0.24,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      decoration: new BoxDecoration(
                        color: kPrimaryColor,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.black54,
                              blurRadius: 8.0,
                              offset: Offset(0.0, 3))
                        ],
                      ),
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
                      top: 13,
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
      ),
    );
  }
}
