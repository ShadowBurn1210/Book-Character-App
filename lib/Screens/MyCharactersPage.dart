import 'package:apartment_housting/Models/appConstants.dart';
import 'package:apartment_housting/Screens/viewProfilePage.dart';
import 'package:apartment_housting/Views/listWidgets.dart';
import 'package:flutter/material.dart';
import '../Views/gridWidgets.dart';
import 'viewCharacterPage.dart';

class MyCharactersPage extends StatefulWidget {

  MyCharactersPage({super.key, required this.title});

  final String title;

  @override
  State<MyCharactersPage> createState() => _MyCharactersPageState();
}

class _MyCharactersPageState extends State<MyCharactersPage> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:15.0),
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context,index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(20.0,7.5,25.0,7.5),
              child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: index == 2 ? CreateCharacterListTile() : MyPostingListTile(),
              ),
            );
          }
      ),
    );
  }
}

