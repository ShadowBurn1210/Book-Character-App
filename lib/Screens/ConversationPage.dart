import 'package:apartment_housting/Models/appConstants.dart';
import 'package:apartment_housting/Screens/GuestHomePage.dart';
import 'package:apartment_housting/Screens/signUpPage.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ConversationPage extends StatefulWidget {

  static final String routeName = "/ConversationPageRoute";

  ConversationPage({super.key, required this.title});

  final String title;

  @override
  State<ConversationPage> createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // ListView.builder(
          //     itemBuilder: itemBuilder
          // ),
          Container(
            child: Row(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: "Write a message"
                  ),
                ),
                MaterialButton(
                    onPressed: () {},
                  child: Text("Send"),

                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
