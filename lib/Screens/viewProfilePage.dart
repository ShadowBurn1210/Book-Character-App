import 'package:apartment_housting/Models/app_constants.dart';
import 'package:apartment_housting/Screens/GuestHomePage.dart';
import 'package:apartment_housting/Views/TextWidgets.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class viewProfilePage extends StatefulWidget {

  static final String routeName = "/viewProfilePageRoute";

  viewProfilePage({super.key, required this.title});

  final String title;

  @override
  State<viewProfilePage> createState() => _viewProfilePageState();
}

class _viewProfilePageState extends State<viewProfilePage> {

  void _signUp() {
    Navigator.pushNamed(context, GuestHomePage.routeName);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarText(text: "View Profile")
        ),
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(35, 30, 35, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget> [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    AutoSizeText(
                        "Hi my name is Ken Kaneki",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                        maxLines: 2,
                      ),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: MediaQuery.of(context).size.width/5.75,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/Kaneki.jpg"),
                        radius: MediaQuery.of(context).size.width/6,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text("About me:",
                  style: TextStyle(
                    fontSize: 25
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: AutoSizeText("If you were to write a story with me in the lead role, it would certainly be... a tragedy.",
                      style: TextStyle(
                      fontSize: 25
                  ),
                ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
