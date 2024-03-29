import 'package:apartment_housting/Models/appConstants.dart';
import 'package:apartment_housting/Screens/GuestHomePage.dart';
import 'package:apartment_housting/Screens/authorHomePage.dart';
import 'package:apartment_housting/Screens/personalInfoPage.dart';
import 'package:apartment_housting/Screens/viewProfilePage.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'LoginPage.dart';

class AccountPage extends StatefulWidget {

  AccountPage({super.key, required this.title});

  final String title;

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {

  String _hostingTitle = "Become an Author";

  void _logout() {
    Navigator.pushNamed(context, LoginPage.routeName);
  }

  void _changeAuthor() {
    if (app_constants.isAuthor) {
      app_constants.isAuthor = false;
      Navigator.push(
        context,
        new MaterialPageRoute(
            builder: (context) => new GuestHomePage(title: 'Home Page',)
        ),
      );
    }else {
      app_constants.isAuthor = true;
      Navigator.push(
        context,
        new MaterialPageRoute(
            builder: (context) => new authorHomePage(title: 'Home Page',)
        ),
      );
    }
  }

  @override
  void initState(){

    if (app_constants.isAuthor){
      _hostingTitle = "To Reader Dashboard";
    } else {
      _hostingTitle = "To Author Dashboard";
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(25, 40, 25, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, viewProfilePage.routeName);
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: MediaQuery.of(context).size.width/5.75,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/Kaneki.jpg"),
                      radius: MediaQuery.of(context).size.width/6,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    children: <Widget>[
                      AutoSizeText(
                          "Ken Kaneki",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      AutoSizeText(
                        "ghoul.king@afterlife.com",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ListView(
            shrinkWrap: true,
            children: <Widget>[
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, personalInfoPage.routeName);
                },
                child: AccountPageListTile(text: "Personal information", iconData: Icons.person,),
              ),
              MaterialButton(
                onPressed: _changeAuthor,
                child: AccountPageListTile(text: _hostingTitle, iconData: Icons.book,),
              ),
              MaterialButton(
                onPressed: _logout,
                child: AccountPageListTile(text: "Logout", iconData: Icons.logout,),
              ),
            ],

          ),
        ],
      ),
    );
  }
}


class AccountPageListTile extends StatelessWidget{

  final String text;
  final IconData iconData;

  AccountPageListTile ({super.key, required this.text, required this.iconData });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2.0),
      child: ListTile(
        leading: Text(
          this.text,
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        trailing: Icon(
          this.iconData,
          size: 25.0,
        ),
      ),
    );
  }

}