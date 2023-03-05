import 'package:apartment_housting/Models/app_constants.dart';
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
    return Center(
      child: Text(
          "Inbox Page"
      ),
    );
  }
}