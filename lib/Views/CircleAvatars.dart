
import 'package:apartment_housting/Models/appConstants.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';


class CircleAvatars extends StatelessWidget {
  final String text;
  final int divider1;
  final int divider2;
  final String image;

  CircleAvatars({super.key, required this.text, required this.divider1, required this.divider2, required this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.black,
          radius: MediaQuery.of(context).size.width / divider1,
          child: CircleAvatar(
            backgroundImage: AssetImage(this.image),
            radius: MediaQuery.of(context).size.width / divider2,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
            children: <Widget>[
              AutoSizeText(
                text,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}