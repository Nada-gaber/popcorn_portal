import 'package:flutter/material.dart';

class HeadLinesText extends StatelessWidget {
  final String headerText;
  const HeadLinesText({super.key, required this.headerText});

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding:const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
        child: Text(
       headerText   ,
          style: const TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
