import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class loadmoney extends StatefulWidget {
  const loadmoney({Key? key}) : super(key: key);

  @override
  State<loadmoney> createState() => _loadmoneyState();
}

class _loadmoneyState extends State<loadmoney> {
  String data="";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loaddata();
  }
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: SafeArea(child:
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
                  child:  Text("Load Money", style: TextStyle(fontSize: 25,),)),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child:  RichText(
                    text: const TextSpan(
                      text: "RS. 345,53656 ",style:  TextStyle(color: Color(0XffFB806E),fontSize: 17),
                      children: [
                        TextSpan(text: "incoming limit left this month",style:TextStyle(color: Colors.grey,fontSize: 17) ),
                      ]
                    )),
              ),

             const  Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child:   Align(alignment: Alignment.topLeft,
                    child:  Text("Received Local Transfers", style: TextStyle(fontSize: 20,),)),
              ),
              Container(

                decoration:BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
border: Border.all(
  color: Colors.grey.shade200,
)
                ),

                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      const Text("My SadaPay account Number",style:TextStyle(color: Colors.grey,fontSize: 13)),
                       const SizedBox(
                          height: 10,

                        ),
                        Text(data,style:TextStyle(color: Colors.black,fontSize: 17)),
                       const  SizedBox(
                          height: 10,
                        ),
                        Text("Copy",style:TextStyle(color: Color(0XffFB806E),fontSize: 17))
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(

                decoration:BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(
                      color: Colors.grey.shade200,
                    )
                ),

                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Received International Transfers",style:TextStyle(color: Colors.grey,fontSize: 13)),
                        SizedBox(
                          height: 10,
                        ),
                        Text("98437597439878437t098",style:TextStyle(color: Colors.black,fontSize: 17)),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Copy",style:TextStyle(color: Color(0XffFB806E),fontSize: 17))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
  Future<void> loaddata()
  async {
    SharedPreferences sp =await SharedPreferences.getInstance();
     data=sp.getString("accountno") ?? " ";
     setState(() {

     });
  }
}
