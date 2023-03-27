import 'package:apartment_housting/Models/appConstants.dart';
import 'package:apartment_housting/Screens/GuestHomePage.dart';
import 'package:apartment_housting/Views/TextWidgets.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:apartment_housting/Views/formWidget.dart';
import '../Views/listWidgets.dart';

class viewAuthorProfilePage extends StatefulWidget {

  static final String routeName = "/viewAuthorProfilePageRoute";

  viewAuthorProfilePage({super.key, required this.title});

  final String title;

  @override
  State<viewAuthorProfilePage> createState() => _viewAuthorProfilePageState();
}

class _viewAuthorProfilePageState extends State<viewAuthorProfilePage> {

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
                        backgroundImage: AssetImage("assets/images/brandon.jpg"),
                        radius: MediaQuery.of(context).size.width/6,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 1 / 2,
                      child: AutoSizeText(
                          "Brandon Sanderson",
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
                  child: AutoSizeText("American author of high fantasy and science fiction. He is best known for the Cosmere fictional universe",
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
                          "Lives in Utah, USA",
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
