import 'package:flutter/material.dart';
import 'package:newschoolfrontendflutter/constants.dart';

class ProgressCard extends StatelessWidget {
  final double progress;
  final String courseName;

  const ProgressCard({Key key, this.progress, this.courseName})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: Card(
                shadowColor: Colors.black,
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 24, left: 24, top: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            courseName,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Color.fromRGBO(26, 26, 26, 1)),
                          ),
                          progress < 1
                              ? Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 5.0),
                                      child: Text(
                                        'CONTINUAR',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 11,
                                            color: kSecondColor),
                                      ),
                                    ),
                                    RotationTransition(
                                        turns:
                                            AlwaysStoppedAnimation(180 / 360),
                                        child: Icon(
                                          Icons.arrow_back,
                                          size: 24,
                                          color: kPrimaryColor,
                                        )),
                                  ],
                                )
                              : Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 5.0),
                                      child: Text(
                                        'CONCLUÍDO',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 11,
                                            color: Color.fromRGBO(
                                                68, 204, 119, 1)),
                                      ),
                                    ),
                                  ],
                                ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 24, left: 24, bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${(progress * 100).toStringAsFixed(0)}% Concluído',
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 10,
                                color: Color.fromRGBO(150, 152, 152, 1)),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 24, left: 24, bottom: 24),
                      child: LinearProgressIndicator(
                        minHeight: 4,
                        valueColor:
                            new AlwaysStoppedAnimation<Color>(kSecondColor),
                        backgroundColor: Color.fromRGBO(231, 231, 231, 0.6),
                        value: progress,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
