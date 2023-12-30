import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignInPage extends StatefulWidget {
  const SignInPage({super.key});
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  double logicalPixelToPhysical(double logicalPixels) {
    final devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
    return logicalPixels * devicePixelRatio;
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
        padding:  EdgeInsets.all(15),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Image1(),
              SizedBox(height: 30,),
              email(),
              SizedBox(height: 10,),
              password(),
              SizedBox(height: 10,),
              forgetpass(),
              SizedBox(height: 10,),
              _ButtonSreen(),
              SizedBox(height: 30,),
              Authremeth()
            ],
          ),
        ),
      ),
    );
  }

  Widget Image1(){
    return Align(
      alignment: Alignment.topCenter,
      child: Column(children: [
        Container(
          margin: EdgeInsets.all(20),
          height: logicalPixelToPhysical(40),
          width: logicalPixelToPhysical(70),
          child: Image( image:   AssetImage('Asset/images/pic4.png'),
          ),
        ),
        Container(
          child: Image( image:   AssetImage('Asset/images/pic5.png'),
          ),
        )
      ],),
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

  Widget forgetpass(){
    return Container(
      alignment: Alignment.topRight,
        width: double.infinity,
        child:  TextButton(onPressed:(){},
        child: Text('Forget password ?',style: TextStyle(color: Color(0xff555555),fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline,
          decorationColor: Color(0xFf555555)
        )),),
      );





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
        child: Text('Sign In',style: TextStyle(fontSize: 13,color: Colors.white,letterSpacing: 0.2),),
      ),
    ),);
  }

  Widget Authremeth(){
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          child:  Text('Or sign in with',style: TextStyle(color: Color(0xff555555),
              decoration: TextDecoration.underline,
              decorationColor: Color(0xFf555555)
          )),
        ),
        SizedBox(height: 20,),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child:   Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){},
              child: Container(
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
                  child: Image(  image: AssetImage('Asset/images/pic6.png'),
                  )),
            ),
            SizedBox(width: 15,),
            GestureDetector(
              onTap: (){},
              child: Container(
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
                  child: Image(  image: AssetImage('Asset/images/pic7.png'),
                  )),
            ),
            SizedBox(width: 15,),
            GestureDetector(
              onTap: (){},
              child: Container(
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
                  child: Image(  image: AssetImage('Asset/images/pic9.png'),
                  )),
            ),
            SizedBox(width: 15,),
            GestureDetector(
              onTap: (){},
              child: Container(
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
                  child: Image(  image: AssetImage('Asset/images/pic8.png'),
                  )),
            )

          ],
        ),
      )
      ],
    );





  }

}
