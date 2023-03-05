
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AppBarText extends StatelessWidget {

  final String text;


  AppBarText({ super.key, required this.text});


  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 18.0,
          fontFamily: "Times new Roman",
        )
    );
  }

}