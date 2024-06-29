import 'package:flutter/material.dart';
import 'package:sadapayappui/persnolscreen.dart';
import 'morescreen.dart';
class mainscreen extends StatefulWidget {
  const mainscreen({Key? key}) : super(key: key);

  @override
  State<mainscreen> createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  int select = 0;


  @override
  Widget build(BuildContext context) {


    return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.grey.shade100,
            body: getBody(),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: select,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_filled), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.payment), label: "Payment"),
                BottomNavigationBarItem(icon: Icon(Icons.menu), label: "More"),
              ],
              selectedItemColor: const Color(0XffFB806E),
              backgroundColor: Colors.white,
              elevation: 20,
              onTap: (int index) {
                setState(() {
                  select = index;
                });
              },
            ),
          ));
  }
  Widget getBody()
  {
    if(select==0)
    {
      return const persnolscreen();
    }
    else if(select==1)
    {WidgetsBinding.instance?.addPostFrameCallback((_) {
        showBottomSheet();
      });
      return Container();
    }
    else if(select==2)
    {
      return const morescreeen();
    }
    else
    {
      return Container();
    }
  }
  void showBottomSheet()
  {
    showModalBottomSheet(
        useRootNavigator: true,
       context: context, builder: (context)
   {return Container(
       color: Colors.white,
       child: const Center(
         child: Text("Hello this is bottom sheet"),
       ),
     );
   }) ;
  }}

