import 'package:flutter/material.dart';
class transaction extends StatelessWidget {
  final String text, time , tralling;
  final Color color;
  final Icon icon;
  const transaction({Key? key, required this.text, required this.color,required this.icon,required this.time, required this.tralling}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
leading: Icon(icon.icon,color: color,),
        title: Text(text.toString(),style: const TextStyle(fontSize: 20,color: Colors.black),),
        subtitle: Text(time.toString()),
        trailing: Text(tralling.toString(),style: const TextStyle(fontSize: 15),),
      );
  }
}
