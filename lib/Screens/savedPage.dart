import 'package:apartment_housting/Models/app_constants.dart';
import 'package:flutter/material.dart';

class SavedPage extends StatefulWidget {

  SavedPage({super.key, required this.title});

  final String title;

  @override
  State<SavedPage> createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
          "Saved Page"
      ),
    );
  }
}