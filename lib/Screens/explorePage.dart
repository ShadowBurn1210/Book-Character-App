import 'package:apartment_housting/Models/app_constants.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {

  ExplorePage({super.key, required this.title});

  final String title;

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Explore Page"
      ),
    );
  }
}
