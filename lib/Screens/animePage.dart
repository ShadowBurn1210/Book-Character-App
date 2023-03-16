import 'package:apartment_housting/Models/appConstants.dart';
import 'package:apartment_housting/Views/CircleAvatars.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class AnimePage extends StatefulWidget {

  AnimePage({super.key, required this.title});

  final String title;

  @override
  State<AnimePage> createState() => _AnimePageState();
}

class _AnimePageState extends State<AnimePage> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25,10,25,10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextAndContainer(text:"Series planning to watch/read", divider: 3,name: "Tokyo Ghoul", image:"assets/images/Kaneki.jpg"),
            TextAndContainer(text:"Series watched/read", divider: 3,name: "Tokyo Revengers", image:"assets/images/TokyoRevengers.jpeg"),
            TextAndContainer(text:"Currently watching/reading series", divider: 5,name: "Attack on Titans", image:"assets/images/AttackOnTitans.jpeg"),
          ],
        ),
      ),
    );
  }
}

class TextAndContainer extends StatelessWidget{
  final String text;
  final int divider;
  final String name;
  final String image;

  TextAndContainer({super.key, required this.text, required this.divider, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
  return Column(
      children: [
        Padding(
        padding: const EdgeInsets.only(top: 8.0),
          child: Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
            ),
          ),
        ),
      ),
      Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
        child: Container(
          child: CircleAvatars(text: name, divider1: 11, divider2: 6, image: image),
        ),
        ),
      ],
    );
}
}


