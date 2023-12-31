import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simpleglacces/Views/SplashScreen.dart';
import 'package:simpleglacces/Views/auth/SignUp.dart';






void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:  SplashScreen(),
    );
  }
}

