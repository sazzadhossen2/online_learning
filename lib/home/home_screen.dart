import 'package:education/constant.dart';
import 'package:education/home/body_part.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

import '../widget/buttom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar(),
      bottomNavigationBar: myButtonNavigationBar(),
      body: const BodyPart()
    );
  }


  AppBar myAppbar() {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: false,
      backgroundColor: backgroundColor,
      title: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          "Hello, Sazzad",
          style: TextStyle(fontWeight: FontWeight.bold, color: primaryTextColor),
        ),
      ),
      actions: [
        SvgPicture.asset("Images/search.svg"),
        const SizedBox(
          width: 20,
        ),
        SvgPicture.asset("Images/user.svg"),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
