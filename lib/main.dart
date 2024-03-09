import 'package:education/splash%20screen/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

void main(){
  runApp(const Myapps());
}
class Myapps extends StatelessWidget {
  const Myapps({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
