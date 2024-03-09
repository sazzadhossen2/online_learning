import 'package:education/details%20screen/details_body.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import '../widget/buttom_nav_bar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        backgroundColor: backgroundColor,
        title: Padding(
        padding: const EdgeInsets.only(left: 10),
    child: Text(
    "Multimedia",
    style: TextStyle(fontWeight: FontWeight.bold, color: primaryTextColor),
    ),
    ),
    ),
    bottomNavigationBar:myButtonNavigationBar() ,
      body: const DetailsBody(),
    );
  }
}
