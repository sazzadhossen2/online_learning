import 'package:flutter/cupertino.dart';
import 'package:svg_flutter/svg.dart';

import '../constant.dart';

Padding myButtonNavigationBar() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 42,
          width: 42,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: subColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: SvgPicture.asset("Images/book.svg"),
        ),
        Container(
          height: 42,
          width: 42,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            // color: subColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: SvgPicture.asset("Images/home.svg"),
        ),
        Container(
          height: 42,
          width: 42,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            // color: subColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: SvgPicture.asset("Images/more.svg"),
        ),
      ],
    ),
  );
}