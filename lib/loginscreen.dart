import 'package:flutter/material.dart';
import 'package:sadapayappui/mainsreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
class loginscreen extends StatefulWidget {
  const loginscreen({Key? key}) : super(key: key);

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {


  String phone1='4';
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0XffFB806E),
        body: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text("Let's get started!",style: TextStyle(color: Colors.white,fontSize: 40,fontStyle:FontStyle.italic),),
          const Text("Please Enter your phone Number",style: TextStyle(color: Colors.white,fontSize: 20,fontStyle:FontStyle.italic),),
            const  SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 60,right: 10),
                child: TextField(
                  keyboardType: TextInputType.number,
                  maxLength: 11,
                  cursorColor: Color(0XffFB806E),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: '0xxxxxxxxxx',


                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          color: Colors.white
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          color: Colors.white
                      ),
                    ),

                  ),
                  onChanged: (val)
                  {
                    phone1=val;
                    setState(() {
                    });

                  },


                ),
              ),

            const SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.bottomLeft,
                child:

                phone1.length ==11?
                Container(
                    height: 60,
                    width: 180,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color:Colors.black,
                    ),
                    child:  Center(child:   InkWell(onTap: ()
                    async {
                      SharedPreferences sp= await SharedPreferences.getInstance();
                      sp.setBool('islogin', true);
                      sp.setString("accountno",phone1 );
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>mainscreen()));




                    },
                        child: const Text("Continue  ->",style: TextStyle(color: Colors.white),)))

                ):
                Container(
                    height:60,
                    width: 180,
                    decoration:const  BoxDecoration
                      (
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xffb95c4d)
                    ),
                    child:
                    const Center(child:  Text("Continue  ->",style: TextStyle(color: Colors.white),))
                )

              ),
            )




          ],
        ),
      ),
    );
  }
}
