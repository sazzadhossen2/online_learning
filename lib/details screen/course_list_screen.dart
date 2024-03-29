import 'package:education/constant.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
        itemCount: myCourseTitles.length,
        itemBuilder: (context, index) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 40,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: index == 0 ? primaryColor : subColor,
              ),
              child: SvgPicture.asset(
                "Images/play.svg",
                color: index == 0 ? Colors.white : primaryColor,
              ),
              
            ),
            const SizedBox(width: 26,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(myCourseTitles[index],style: const TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 18
                  ),),
                  const SizedBox(height: 4,),
                  const Text("Flexible and accessible education",style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 12
                  ),)
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
