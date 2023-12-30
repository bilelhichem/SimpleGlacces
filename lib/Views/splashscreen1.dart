import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simpleglacces/Views/auth/SignUp.dart';
import 'package:simpleglacces/Views/auth/signIn.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});
  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  List images = ['pic1.png','pic3.png'];
  final controller = PageController();
  int currentPage = 0;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  double logicalPixelToPhysical(double logicalPixels) {
    final devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
    return logicalPixels * devicePixelRatio;
  }
  var HeighDevice ;
  var WidhtDevice;
  @override
  Widget build(BuildContext context) {
    HeighDevice = MediaQuery.of(context).size.height;
    WidhtDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      body: PageView(
        controller: controller,
        onPageChanged: (index) {
          setState(() {
            currentPage = index;
          });
        },
        children: [
          screen1(),
          screen2(),

        ],
      ),
    );
  }

  Widget screen1() {
    return Stack(
      children: <Widget>[
         _ImageScreen(),
          _CenterImage(),
         _ButtonSreen(),
          _CirculeScreen()
  ],
      );
}
  Widget screen2() {
    return Stack(
      children: <Widget>[
        _ImageScreen(),
        _CenterImage(),
        _info(),
        _CirculeScreen()
      ],
    );
  }


  Widget _ImageScreen(){
    return Container(

      height: HeighDevice ,
      width: WidhtDevice,

     child: Image( image:   AssetImage('Asset/images/${images[currentPage]}'),
     fit: BoxFit.cover,
     ),
    );
  }

  Widget _CenterImage(){
    return Align(
      alignment: currentPage==0? Alignment.center: Alignment.topCenter,
      child: Container(
        margin: currentPage == 0 ? EdgeInsets.all(0) : EdgeInsets.all(30),
        height: logicalPixelToPhysical(80),
        width: logicalPixelToPhysical(100),
        child: Image( image:   AssetImage('Asset/images/pic2.png'),
        ),
      ),
    );
  }

  Widget _ButtonSreen(){
    return Positioned(
      width: WidhtDevice,
        bottom: 100,

        child: Center(child: Container(

          width: logicalPixelToPhysical(85),
          height: logicalPixelToPhysical(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
          ),

          child: ElevatedButton(
            onPressed: () {
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF355F75),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: Text('Let s explore more',style: TextStyle(fontSize: 13,color: Colors.white,letterSpacing: 0.2),),
          ),
        ),));
  }
  Widget _CirculeScreen(){
    double _circleRadius = HeighDevice * 0.005;
    return Positioned(
        width: WidhtDevice,
        bottom: 85,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(right: WidhtDevice * 0.015),
              height: _circleRadius * 2,
              width: _circleRadius * 2,
              decoration: BoxDecoration(
                border:Border.all(color: Colors.white),
                color: currentPage == 0 ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: WidhtDevice * 0.015),
              height: _circleRadius * 2,
              width: _circleRadius * 2,
              decoration: BoxDecoration(
                border:Border.all(color: Colors.white),
                color: currentPage == 1 ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.circular(100),
              ),
            )
          ],
        ));
  }

  Widget _info(){
    return Positioned(
        width: WidhtDevice,
        bottom: 160,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [

               Container(

                 child: RichText(

                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(fontSize: 18, fontFamily: 'SF Pro Display', color: Colors.white,),
                    text: 'Sign in and let the eyewear journey begin! Explore a myriad of sunglasses and glasses that fit your unique style',
                  ),

                               ),
               ),
               SizedBox(height: 15,),
               Container(

              width: logicalPixelToPhysical(85),
              height: logicalPixelToPhysical(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
              ),

              child: ElevatedButton(
                onPressed: () {
                  Get.to(SignUpPage());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF355F75),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: Text('Sign up',style: TextStyle(fontSize: 13,color: Colors.white,letterSpacing: 0.2),),
              ),
            ),
            SizedBox(height: 10,),
               Row(
                 mainAxisSize: MainAxisSize.max,
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Text('Already have an account ? ',style: TextStyle(color: Colors.white,fontSize: 12),),
                   TextButton(onPressed: (){
                     Get.to(SignInPage());
                   }, child: Text('Sign in',style: TextStyle(
                     fontSize: 10,
                     color: Colors.white,
                     decoration: TextDecoration.underline,
                     decorationColor: Colors.white
                   )
                     ,)  )

                 ],
               )
          ],
        ));
  } // ta3 screeen 2




}
