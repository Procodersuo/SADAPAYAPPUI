import 'package:flutter/material.dart';
import 'package:sadapayappui/loadmoney.dart';
import 'package:sadapayappui/sendandrequest.dart';
import 'package:sadapayappui/transactionlist.dart';

class persnolscreen extends StatefulWidget {
  const persnolscreen({Key? key}) : super(key: key);

  @override
  State<persnolscreen> createState() => _persnolscreenState();
}

int x = 0;

class _persnolscreenState extends State<persnolscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
                children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    // USING THIS FOR RESPONSIVE LAYOUT MY CONTAINER WILL AUTOMATICALLY ADJUT THEIR WIDHT ACCORDING TO SCREEN
                    flex: 3,
                    child: InkWell(
                      onLongPress: () {
                        x = 1;
                      },
                      child: Container(
                          height: 261,
                          decoration: BoxDecoration(
                            color: const Color(0xff02d5b2),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(color: Color(0xff02d5b2), blurRadius: 5)
                            ],
                          ),
                          child:  Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              const Positioned(
                                  top: 15,
                                  left: 8,
                                  child: Text(
                                    "Current Balance",
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.end,
                                  )),
                             const  Positioned(
                                  top: 35,
                                  left: 8,
                                  child: Text(
                                    "RS. 7,041",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 30),
                                    textAlign: TextAlign.start,
                                  )),
                              Padding(
                                padding: EdgeInsets.only(left: 10,bottom: 10),
                                child: Align(alignment: Alignment.bottomLeft,
                                    child: Container(height: 50,

                                        child: Image(image: AssetImage('assests/mastercard.png')))),
                              ),
                             const  Icon(
                                Icons.arrow_right_alt,
                                size: 40,
                                color: Colors.white,
                              ),
                            ],
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const loadmoney()));
                          },
                          child: Container(
                              height: 123,
                              decoration: BoxDecoration(
                                  color: const Color(0Xff1EA6F4),
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Stack(
                                children: [
                                  Positioned(
                                    bottom: 5,
                                    left: 8,
                                    child: Text(
                                      "load\nMoney",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  ),
                                  Positioned(
                                      top: 6,
                                      left: 8,
                                      child: Icon(
                                        Icons.download,
                                        size: 20,
                                        color: Colors.white,
                                      ))
                                ],
                              )),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => sendandrequest()));
                          },
                          child: Container(
                              height: 123,
                              decoration: BoxDecoration(
                                  color: const Color(0XffFB806E),
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Stack(
                                children: [
                                  Positioned(
                                    bottom: 5,
                                    left: 8,
                                    child: Text(
                                      "Send &\nRequest",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  ),
                                  Positioned(
                                      right: 8,
                                      top: 10,
                                      child: Icon(
                                        Icons.send,
                                        size: 20,
                                        color: Colors.white,
                                      ))
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  color: Colors.white,
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Today",
                            style: TextStyle(fontSize: 22, color: Colors.black),
                          )),
                    ),
                    transaction(
                      text: "Facebook",
                      time: "9:00",
                      tralling: "500",
                      color: Color(0Xff1EA6F4),
                      icon: Icon(Icons.balance),
                    ),
                    transaction(
                      text: "Allied Bank",
                      time: "9:00",
                      tralling: "500",
                      color: Color(0Xff1EA6F4),
                      icon: Icon(Icons.account_balance),
                    ),
                    transaction(
                      text: "Hbl",
                      time: "9:00",
                      tralling: "500",
                      color: Color(0XffFB806E),
                      icon: Icon(Icons.account_balance),
                    ),
                    transaction(
                      text: "Alfalah",
                      time: "9:00",
                      tralling: "500",
                      color: Color(0Xff1EA6F4),
                      icon: Icon(Icons.account_balance),
                    ),
                    transaction(
                      text: "soneri",
                      time: "9:00",
                      tralling: "500",
                      color: Color(0XffFB806E),
                      icon: Icon(Icons.account_balance),
                    ),
                    transaction(
                      text: "Abrar Ahmad",
                      time: "9:00",
                      tralling: "500",
                      color: Color(0Xff1EA6F4),
                      icon: Icon(Icons.account_balance),
                    ),
                    transaction(
                      text: "Noreen FATIMA",
                      time: "9:00",
                      tralling: "500",
                      color: Color(0XffFB806E),
                      icon: Icon(Icons.account_balance),
                    ),
                    transaction(
                      text: "Talha Shoaib",
                      time: "9:00",
                      tralling: "500",
                      color: Color(0Xff1EA6F4),
                      icon: Icon(Icons.account_balance),
                    ),
                    transaction(
                      text: "Ali ",
                      time: "9:00",
                      tralling: "500",
                      color: Color(0XffFB806E),
                      icon: Icon(Icons.money),
                    ),
                    transaction(
                      text: "Farkhanda Yasmenn",
                      time: "9:00",
                      tralling: "500",
                      color: Color(0Xff1EA6F4),
                      icon: Icon(Icons.account_balance),
                    ),
                    transaction(
                      text: "kinaza",
                      time: "9:00",
                      tralling: "500",
                      color: Color(0Xff1EA6F4),
                      icon: Icon(Icons.money),
                    ),
                    transaction(
                      text: "Dubai",
                      time: "9:00",
                      tralling: "500",
                      color: Color(0XffFB806E),
                      icon: Icon(Icons.account_balance),
                    ),
                  ],
                ),
              ),
            ]
            ),
          ),
        ),
      );
  }
}
