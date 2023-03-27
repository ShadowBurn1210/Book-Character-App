import 'package:apartment_housting/Models/appConstants.dart';
import 'package:flutter/material.dart';

class InboxPage extends StatefulWidget {

  InboxPage({super.key, required this.title});

  final String title;

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemExtent: MediaQuery.of(context).size.height/7,
      itemBuilder: (context, index){
        return Container(

        );
      }
    );
  }
}