import 'package:apartment_housting/Models/app_constants.dart';
import 'package:apartment_housting/Screens/personalInfoPage.dart';
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

  void _logout() {
    Navigator.pushNamed(context, LoginPage.routeName);
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
                  onPressed: () {},
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
                onPressed: () {},
                child: AccountPageListTile(text: "Put up an offer", iconData: Icons.home,),
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