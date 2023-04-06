import 'package:apartment_housting/Models/appConstants.dart';
import 'package:apartment_housting/Screens/viewProfilePage.dart';
import 'package:flutter/material.dart';
import '../Views/gridWidgets.dart';
import 'viewCharacterPage.dart';

class AddedCharactersPage extends StatefulWidget {

  AddedCharactersPage({super.key, required this.title});

  final String title;

  @override
  State<AddedCharactersPage> createState() => _AddedCharactersPageState();
}

class _AddedCharactersPageState extends State<AddedCharactersPage> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Added Characters"),
    );
  }
}