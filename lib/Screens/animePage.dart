import 'package:apartment_housting/Models/appConstants.dart';
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
    return Center(
      child: Text(
          "Anime Page"
      ),
    );
  }
}