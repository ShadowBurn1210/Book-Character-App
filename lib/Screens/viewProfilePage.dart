import 'package:apartment_housting/Models/appConstants.dart';
import 'package:apartment_housting/Screens/GuestHomePage.dart';
import 'package:apartment_housting/Views/TextWidgets.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:apartment_housting/Views/formWidget.dart';
import '../Views/listWidgets.dart';

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
            padding: const EdgeInsets.fromLTRB(35, 45, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget> [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: MediaQuery.of(context).size.width/5.75,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/Kaneki.jpg"),
                        radius: MediaQuery.of(context).size.width/6,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 1 / 2,
                      child: AutoSizeText(
                          "Ken Kaneki",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                        ),
                    ),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text("About me:",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: AutoSizeText("If you were to write a story with me in the lead role, it would certainly be... a tragedy.",
                      style: TextStyle(
                      fontSize: 18
                  ),
                ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Text(
                          "Location:",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.home),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AutoSizeText(
                          "Lives in Tokyo, Japan",
                          style: TextStyle(
                              fontSize: 18
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text("Reviews:",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: reviewForm(title: "Review form", ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: ListView.builder(
                    itemCount: 2,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top:15.0, bottom: 8.0),
                        child: ReviewListTile(
                          title: "Reviews",
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
            ),
          );
  }
}
