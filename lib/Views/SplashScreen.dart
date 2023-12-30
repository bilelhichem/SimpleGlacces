import 'dart:async';

import 'package:flutter/material.dart';
import 'package:simpleglacces/Views/splashscreen1.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Delayed navigation to the next screen
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SplashScreen1(), // Replace with your target screen
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    double logicalPixelToPhysical(double logicalPixels) {
      final devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
      return logicalPixels * devicePixelRatio;
    }
    return  Scaffold(
     body:Container(
       width: double.infinity,
       height: double.infinity,
       decoration: BoxDecoration(
         gradient: LinearGradient(colors: [Color(0XFF355F75),Color(0Xff618293)],
               begin: Alignment.topCenter,
               end: Alignment.bottomCenter,
         ),
       ),
       child: Image(
           height: logicalPixelToPhysical(58),
           width: logicalPixelToPhysical(305),
           image:   AssetImage('Asset/images/img.png')),
     ) ,
    );
  }
}
