import 'package:education/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:svg_flutter/svg.dart';

import '../details screen/details_screen.dart';
import '../widget/well_come_text.dart';

class BodyPart extends StatelessWidget {
  const BodyPart({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          wellComeToText(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MultimediaCard(
                  cheek: true,
                  image: "Images/learning01.svg",
                ),
                MultimediaCard(
                  image: "Images/learning02.svg",
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MultimediaCard(
                  image: "Images/learning03.svg",
                ),
                MultimediaCard(
                  image: "Images/learning04.svg",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MultimediaCard extends StatelessWidget {
  const MultimediaCard({
    super.key,
    this.cheek = false,
    required this.image,
  });

  final bool cheek;
  final image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const DetailsScreen());
      },
      child: Container(
        width: 180,
        height: 275,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: cheek ? primaryColor : const Color(0xFFFFF4F4),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Multimedia",
              style: TextStyle(
                fontSize: 16,
                color: cheek ? Colors.white : secondTextColor,
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              "Multimedia",
              style: TextStyle(
                fontSize: 16,
                color: cheek ? Colors.white : primaryTextColor,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Container(
                  height: 3,
                  width: 30,
                  color: cheek ? Colors.white : subColor,
                ),
                Container(
                  height: 3,
                  width: 80,
                  color: lineColor,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: SvgPicture.asset(
              image,
              height: 170,
            ))
          ],
        ),
      ),
    );
  }
}
