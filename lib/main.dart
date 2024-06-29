import 'package:flutter/material.dart';
import 'package:sadapayappui/loginscreen.dart';
import 'package:sadapayappui/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}
//HELLO I AM MIAN SCREEN
class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: splashscreen()
    );
  }
}
