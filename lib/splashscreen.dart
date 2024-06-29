import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sadapayappui/loginscreen.dart';
import 'package:sadapayappui/mainsreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loinchecker();

  }
  loinchecker()
  async {
    SharedPreferences sp= await SharedPreferences.getInstance();
     bool? loginchecker = sp.getBool('islogin') ?? false;
    if(loginchecker)
      {
        Timer(Duration(seconds: 2),(){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const mainscreen(),


          ));
        });
      }

    else
      {Timer(Duration(seconds: 2),(){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
              const loginscreen()
          ));
        });
      }}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0XffFB806E),
        ),
        child:   const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             SizedBox(
              height: 60,
              child: Image(
                image:
                AssetImage('assests/sadawhite.png',),),
            ),
             Text("SADAPAY",style: TextStyle(fontSize: 40, color: Colors.white,fontStyle: FontStyle.italic),),

          ],
        )
      ),
    );
  }
}
