import 'package:apartment_housting/Models/appConstants.dart';
import 'package:flutter/material.dart';

import '../Views/gridWidgets.dart';

class SavedPage extends StatefulWidget {

  SavedPage({super.key, required this.title});

  final String title;

  @override
  State<SavedPage> createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(25,15,25,15),
      child: SingleChildScrollView(
        child: GridView.builder(
          physics: ScrollPhysics(),
          itemCount: 1,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 4/5
          ),
          itemBuilder: (context, index) {
            return TripGridTile();
          },
        ),
      ),
    );
  }
}