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
        return CoversationListTile(
        );
      }
    );
  }
}

class CoversationListTile extends StatefulWidget{

  CoversationListTile({super.key});

  @override
  _CoversationListTileState createState() => _CoversationListTileState();

}

class _CoversationListTileState extends State<CoversationListTile> {

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage("assets/images/mikeyS.jpeg"),
        radius: MediaQuery.of(context).size.width /11.0,
      ),
      title: Text(
        "Mikey",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18
        ),
      ),
      subtitle: Text(
        "So Tell Me Who The Hell You Really Are",
        style: TextStyle(
          fontSize: 15
        ),
      ),
      trailing: Text(
        "March 26",
        style: TextStyle(
            fontSize: 12
        ),
      ),
      contentPadding: EdgeInsets.only(top: 25, right: 15),
    );
  }

}
