import 'package:flutter/material.dart';
import 'package:sadapayappui/transactionlist.dart';
class requestmoney extends StatelessWidget {
  const requestmoney({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(child:
        SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:const  EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Align(alignment: Alignment.topLeft,
                      child: BackButton(
                        onPressed:()
                        {
                          Navigator.pop(context);
                        },
                        color: Colors.black,),
                    ),

                    const   SizedBox(
                      height: 30,
                    ),

                    const  Align(alignment: Alignment.topLeft,
                        child:  Text("New Money REQUEST ", style: TextStyle(fontSize: 25,),)),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(

                      decoration:BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(Radius.circular(15)),
                          boxShadow:  const [
                            BoxShadow(
                                color: Colors.white
                            )],
                          border: Border.all(
                              color: Colors.grey.shade200
                          )
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        child: ListTile(
                          leading: Icon(Icons.food_bank_sharp,color: Color(0XffFB806E),),
                          title: Text("New Money Request", style: TextStyle(fontSize: 20, color: Colors.black),),
                          subtitle: Text("Request money instantly from sadpay buddies ",style: TextStyle(fontSize: 15,color: Colors.grey),),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const transaction(
                      text: "03114795308",
                      time: "9:00",
                      tralling: "",
                      color: Color(0Xff1EA6F4),
                      icon: Icon(Icons.add),
                    ),
                    const transaction(
                      text: "03334828094",
                      time: "9:00",
                      tralling: "",
                      color: Color(0Xff1EA6F4),
                      icon: Icon(Icons.add),
                    ),
                    const  transaction(
                      text: "03334828094",
                      time: "9:00",
                      tralling: "",
                      color: Color(0XffFB806E),
                      icon: Icon(Icons.add),
                    ),
                    const  transaction(
                      text: "03334828094",
                      time: "9:00",
                      tralling: "",
                      color: Color(0Xff1EA6F4),
                      icon: Icon(Icons.add),
                    ),
                    const  transaction(
                      text: "03334828094",
                      time: "9:00",
                      tralling: "",
                      color: Color(0XffFB806E),
                      icon: Icon(Icons.add),
                    ),
                    const transaction(
                      text: "03334828094",
                      time: "9:00",
                      tralling: "",
                      color: Color(0Xff1EA6F4),
                      icon: Icon(Icons.add),
                    ),
                    const  transaction(
                      text: "03334828094",
                      time: "9:00",
                      tralling: "",
                      color: Color(0XffFB806E),
                      icon: Icon(Icons.add),
                    ),
                    const transaction(
                      text: "Talha Shoaib",
                      time: "9:00",
                      tralling: "",
                      color: Color(0Xff1EA6F4),
                      icon: Icon(Icons.add),
                    ),
                    const  transaction(
                      text: "Ali ",
                      time: "9:00",
                      tralling: "",
                      color: Color(0XffFB806E),
                      icon: Icon(Icons.add),
                    ),
                    const  transaction(
                      text: "03334828094",
                      time: "9:00",
                      tralling: "",
                      color: Color(0Xff1EA6F4),
                      icon: Icon(Icons.add),
                    ),
                    const    transaction(
                      text: "03334828094",
                      time: "9:00",
                      tralling: "",

                      color: Color(0Xff1EA6F4),
                      icon: Icon(Icons.add),
                    ),
                    const transaction(
                      text: "03334828094",
                      time: "9:00",
                      tralling: "",
                      color: Color(0XffFB806E),
                      icon: Icon(Icons.add),
                    ),

                  ],
                ),
              )
            ],
          ),
        )
        ),
      ),
    );
  }
}
