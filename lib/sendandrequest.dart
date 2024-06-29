import 'package:flutter/material.dart';
import 'package:sadapayappui/requestmoney.dart';
import 'package:sadapayappui/sendandrequestpad.dart';
import 'package:sadapayappui/sendmoney.dart';

class sendandrequest extends StatefulWidget {
  const sendandrequest({Key? key}) : super(key: key);

  @override
  State<sendandrequest> createState() => _sendandrequestState();
}

class _sendandrequestState extends State<sendandrequest> {
  String x = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color(0XffFB806E),
      appBar: AppBar(
        centerTitle: true,
          title: const Center(
              child: Text(
            "Current balance \n 89,487,959",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15),
          )),
          backgroundColor: const Color(0XffFB806E),
          elevation: 0,
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.white,
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Rs.$x",
            style: const TextStyle(fontSize: 30, color: Colors.white),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        numericpad(
                          text: "1",
                          onpressed: () {
                            x += '1';
                            setState(() {});
                          },
                        ),
                        numericpad(
                            text: "2",
                            onpressed: () {
                              x += '2';
                              setState(() {});
                            }),
                        numericpad(
                            text: "3",
                            onpressed: () {
                              x += '3';
                              setState(() {});
                            }),
                      ],
                    ),
                    Row(
                      children: [
                        numericpad(
                            text: "4",
                            onpressed: () {
                              x += '4';
                              setState(() {});
                            }),
                        numericpad(
                            text: "5",
                            onpressed: () {
                              x += '5';
                              setState(() {});
                            }),
                        numericpad(
                            text: "6",
                            onpressed: () {
                              x += '6';
                              setState(() {});
                            }),
                      ],
                    ),
                    Row(
                      children: [

                        numericpad(
                            text: "7",
                            onpressed: () {
                              x += '7';
                              setState(() {});
                            }),
                        numericpad(
                            text: "8",
                            onpressed: () {
                              x += '8';
                              setState(() {});
                            }),
                        numericpad(
                            text: "9",
                            onpressed: () {
                              x += '9';
                              setState(() {});
                            }),
                      ],
                    ),
                    Row(
                      children: [
                        numericpad(
                            text: "",
                            onpressed: () {
                              setState(() {});
                            }),
                        numericpad(
                            text: "0",
                            onpressed: () {
                              if(x.length>=1)
                                {
                                  x += '0';

                                }
                              setState(() {});
                            }),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 5),
                           child: InkWell(
                             onTap: ()
                               {
                                 x=x.substring(0,x.length-1);
                                 setState(() {

                                 });
                               },
                               child: const Icon(Icons.backspace,size: 30,color: Colors.white,)))
                      ],
                    ),

                    Row(
                      children:
                        [
                          Container(
                            child: Row(
                              children: [
                                x==''?
                                Container(
                                    height:40,
                                    width: 130,
                                    decoration:const  BoxDecoration
                                      (
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        color: Color(0xffb95c4d)
                                    ),
                                    child:
                                    const Center(child:  Text("Request",style: TextStyle(color: Colors.white),))
                                )
                                    : Container(
                                    height: 40,
                                    width: 130,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      color:Colors.black,
                                    ),
                                    child:  Center(child:   InkWell(onTap: ()
                                        {
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>requestmoney()));
                                        },
                                        child: Text("Request",style: TextStyle(color: Colors.white),)))

                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                x==''?
                                Container(
                                    height:40,
                                    width: 130,
                                    decoration:const  BoxDecoration
                                      (
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                      color: Color(0xffb95c4d)

                                    ),
                                    child:
                                   const  Center(child:  Text("Send",style: TextStyle(color: Colors.white),))
                                )
                                    : Container(
                                    height: 40,
                                    width: 130,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      color:Colors.black,
                                    ),
                                    child: Center(child:   InkWell(onTap: ()
                                        {
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>sendmoney()));
                                        },
                                        child: Text("SEND",style: TextStyle(color: Colors.white),)))

                                ),
                              ],
                            ),
                          ),

                        ]
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
