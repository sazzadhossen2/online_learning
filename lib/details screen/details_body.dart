import 'package:education/constant.dart';
import 'package:education/widget/well_come_text.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

import 'course_list_screen.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ///welcome text
          wellComeToText(),

          ///for image
          images(),
//SizedBox(height: 40,),
          ///for course
          courseduration(),

          const CourseScreen()
        ],
      ),
    );
  }

  Padding courseduration() {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Course Detail",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 30,
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: subColor,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset("Images/clock.svg"),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "3 hours, 30 min",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: primaryTextColor),
                    )
                  ],
                ),
              )
            ],
          ),
        );
  }

  Padding images() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        width: double.infinity,
        height: 180,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: SvgPicture.asset("Images/intro.svg"),
      ),
    );
  }
}
