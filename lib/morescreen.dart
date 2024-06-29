// Hello This Is More Screen
import 'package:flutter/material.dart';
import 'package:sadapayappui/loginscreen.dart';
import 'package:sadapayappui/splashscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
class morescreeen extends StatefulWidget {
  const morescreeen({Key? key}) : super(key: key);

  @override
  State<morescreeen> createState() => _morescreeenState();
}
class _morescreeenState extends State<morescreeen> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:SafeArea(child: 
      Scaffold(
        backgroundColor: Colors.grey.shade100,
        body:  SingleChildScrollView(
          child: Column(
            children: [
             // Hello 
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: ListTile(
                      leading: Icon(Icons.person,color: Colors.green.shade200,),
                      title: Text("Bulls VS Bear "),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: ListTile(
                      leading: Icon(Icons.message,color: Colors.green.shade200,),
                      title: Text("Open a Business Account"),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: ListTile(
                      leading: Icon(Icons.person,color: Colors.green.shade200,),
                      title: Text("Bulls VS Bear "),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: ListTile(
                      leading: Icon(Icons.person,color: Colors.green.shade200,),
                      title: Text("Bulls VS Bear "),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: ListTile(
                      leading: Icon(Icons.person,color: Colors.green.shade200,),
                      title: Text("Bulls VS Bear "),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: ListTile(
                      leading: Icon(Icons.person,color: Colors.green.shade200,),
                      title: Text("Bulls VS Bear "),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: ListTile(
                      leading: Icon(Icons.person,color: Colors.green.shade200,),
                      title: Text("Bulls VS Bear "),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: ListTile(
                      leading: Icon(Icons.person,color: Colors.green.shade200,),
                      title: Text("Bulls VS Bear "),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: ListTile(
                      leading: Icon(Icons.person,color: Colors.green.shade200,),
                      title: Text("Bulls VS Bear "),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: InkWell(
                  onTap: ()
                  async {
                    SharedPreferences sp=await SharedPreferences.getInstance();
                    sp.remove('islogin');
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>loginscreen()));
                  },
                  child: Container(


                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: ListTile(
                        leading: Icon(Icons.person,color: Colors.green.shade200,),
                        title: Text("Logout "),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ))
    );
  }
}
