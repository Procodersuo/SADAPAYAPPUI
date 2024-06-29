import 'package:flutter/material.dart';

class numericpad extends StatelessWidget {
  final String text;
  final VoidCallback onpressed;
  const numericpad({Key? key, required this.text, required this.onpressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      child: Align(
        alignment: Alignment.center,
        child: InkWell(
          onTap: onpressed,
          child: Container(
            width:40,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: Center(
                child: Text(
              text.toString(),
              style: const TextStyle(fontSize: 40, color: Colors.white),
            )),
          ),
        ),
      ),
    );
  }
}
