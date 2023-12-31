import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simpleglacces/Controller/HomeController.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: GestureDetector(
          onTap: (){
            Get.back();
          },
          child: Container(
            alignment: Alignment.topLeft,
            width: double.infinity,
            child: Image(
              width: 40,
              height: 40,
              image: AssetImage("Asset/images/pic10.png"),),
          ),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
            Container(
              alignment: Alignment.topCenter,
              child:   GetBuilder<ImagePickerController>(
                init: Get.put(ImagePickerController()),
                builder: (value){
                  return Stack(
                      children:[
                        value.selectedImagePath== ""?CircleAvatar(
                          radius: 64,
                          backgroundImage: AssetImage("Asset/images/pic3.png"),
                        ):
                        Image.file(
                          File(value.selectedImagePath),
                          height: 200,
                          width: 200,
                          fit: BoxFit.fill,
                        ),
                        Positioned(child:
                        IconButton(onPressed: (){
                          value.gallerySelect(context);
                        },
                          icon:  Icon(Icons.add_a_photo),
                        ),
                          bottom: -10,
                          left: 80,
                        )
                      ]
                  );
                },
              ),
            ),
              SizedBox(height: 10,),
              Container(
                child: Image( image:   AssetImage('Asset/images/pic11.png'),
                ),
              ),
              SizedBox(height: 10,),
              name(),
              SizedBox(height: 10,),
              secondename(),
              SizedBox(height: 10,),
              email(),
              SizedBox(height: 10,),
              password(),
              SizedBox(height: 10,),
              location(),
              SizedBox(height: 20,),
              _ButtonSreen()

          ],
              ),
        ),
      ),
    );
  }

  Widget _emailTextField() {
    return Container(
      padding: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width * 0.70,
      child: TextField(

        cursorColor: Color(0xFF828282),
        autocorrect: false,
        style: TextStyle(color: Color(0xFF828282)),
        decoration: InputDecoration(
          icon: Icon(Icons.email_outlined),
          iconColor: Color(0xFF828282),
          hintText: "John.doe@gmail.com",
          hintStyle: TextStyle(color:Color(0xFF828282)),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _passwordTextField() {
    return Container(
      padding: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width * 0.70,
      child: TextField(
        obscureText: true,
        cursorColor: Color(0xFF828282),
        autocorrect: false,
        style: TextStyle(color: Color(0xFF828282)),
        decoration: InputDecoration(
          iconColor: Color(0xFF828282),
          icon: Icon(Icons.key),
          hintText: "Password",
          hintStyle: TextStyle(color:Color(0xFF828282)),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _name() {
    return Container(
      padding: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width * 0.70,
      child: TextField(

        cursorColor: Color(0xFF828282),
        autocorrect: false,
        style: TextStyle(color: Color(0xFF828282)),
        decoration: InputDecoration(
          icon: Icon(Icons.people),
          iconColor: Color(0xFF828282),
          hintText: "Bilel Hichem",
          hintStyle: TextStyle(color:Color(0xFF828282)),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _secondename() {
    return Container(
      padding: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width * 0.70,
      child: TextField(
        obscureText: true,
        cursorColor: Color(0xFF828282),
        autocorrect: false,
        style: TextStyle(color: Color(0xFF828282)),
        decoration: InputDecoration(
          iconColor: Color(0xFF828282),
          icon: Icon(Icons.people),
          hintText: "Lakhmi",
          hintStyle: TextStyle(color:Color(0xFF828282)),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _location() {
    return Container(
      padding: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width * 0.70,
      child: TextField(

        cursorColor: Color(0xFF828282),
        autocorrect: false,
        style: TextStyle(color: Color(0xFF828282)),
        decoration: InputDecoration(
          icon: Icon(Icons.location_on),
          iconColor: Color(0xFF828282),
          hintText: "Boumerdes , Corso",
          hintStyle: TextStyle(color:Color(0xFF828282)),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }


  Widget name(){
    return Column(children: [
      Container(
        width: double.infinity,
        child:  Text('First name',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
      ),
      SizedBox(height: 7,),
      Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white.withOpacity(1),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // Couleur de l'ombre avec opacité
              spreadRadius: 2, // Étendue de l'ombre
              blurRadius: 10, // Rayon du flou
              offset: Offset(3, 3), // Décalage de l'ombre (horizontal, vertical)
            ),
          ],
        ),
        child: _name(),
      ),


    ],);
  }

  Widget secondename(){
    return Column(children: [
      Container(
        width: double.infinity,
        child:  Text('Second name',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
      ),
      SizedBox(height: 7,),
      Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white.withOpacity(1),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // Couleur de l'ombre avec opacité
              spreadRadius: 2, // Étendue de l'ombre
              blurRadius: 10, // Rayon du flou
              offset: Offset(3, 3), // Décalage de l'ombre (horizontal, vertical)
            ),
          ],
        ),
        child: _secondename(),
      ),


    ],);
  }

  Widget email(){
    return Column(children: [
      Container(
        width: double.infinity,
        child:  Text('Your email',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
      ),
      SizedBox(height: 7,),
      Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white.withOpacity(1),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // Couleur de l'ombre avec opacité
              spreadRadius: 2, // Étendue de l'ombre
              blurRadius: 10, // Rayon du flou
              offset: Offset(3, 3), // Décalage de l'ombre (horizontal, vertical)
            ),
          ],
        ),
        child: _emailTextField(),
      ),


    ],);
  }

  Widget password(){
    return Column(children: [
      Container(
        width: double.infinity,
        child:  Text('Password',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
      ),
      SizedBox(height: 7,),
      Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white.withOpacity(1),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // Couleur de l'ombre avec opacité
              spreadRadius: 2, // Étendue de l'ombre
              blurRadius: 10, // Rayon du flou
              offset: Offset(3, 3), // Décalage de l'ombre (horizontal, vertical)
            ),
          ],
        ),
        child: _passwordTextField(),
      ),


    ],);
  }

  Widget location(){
    return Column(children: [
      Container(
        width: double.infinity,
        child:  Text('Localisation',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
      ),
      SizedBox(height: 7,),
      Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white.withOpacity(1),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // Couleur de l'ombre avec opacité
              spreadRadius: 2, // Étendue de l'ombre
              blurRadius: 10, // Rayon du flou
              offset: Offset(3, 3), // Décalage de l'ombre (horizontal, vertical)
            ),
          ],
        ),
        child: _location(),
      ),


    ],);
  }

  Widget _ButtonSreen(){
    return Center(child: Container(

      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
      ),

      child: ElevatedButton(
        onPressed: () {
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF355F75),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text('Sign Up',style: TextStyle(fontSize: 13,color: Colors.white,letterSpacing: 0.2),),
      ),
    ),);
  }
}
