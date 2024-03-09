import 'package:flutter/cupertino.dart';

Padding wellComeToText() {
  return const Padding(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
    child: Text(
      "accessing education anytime, anywhere through digital platforms",
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 23),
    ),
  );
}