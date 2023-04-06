import 'package:apartment_housting/Models/appConstants.dart';
import 'package:apartment_housting/Screens/GuestHomePage.dart';
import 'package:apartment_housting/Screens/signUpPage.dart';
import 'package:apartment_housting/Screens/viewProfilePage.dart';
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
          appBar: AppBar(
            title: Text(
                "Mikey",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20.0,
                )
            ),
          ),
      body: Column(
        children: [
          Expanded(child:
            ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ReceivedMessageListTile(),
                    SentMessageListTile(),
                  ],
                ),
              );
                },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
              )
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 6/8,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Write a message",
                      contentPadding: EdgeInsets.all(15.0),
                      border: InputBorder.none
                    ),
                    minLines: 1,
                    maxLines: 5,
                    style: TextStyle(
                      fontSize: 20.0
                    ),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                      onPressed: () {},
                    child: Text("Send"),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReceivedMessageListTile extends StatelessWidget{

  ReceivedMessageListTile ({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(6, 15, 8, 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 4.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => new viewProfilePage(title: 'Profile Page',),
                    ),
                  );
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/Vaelin.jpg"),
                  radius: MediaQuery.of(context).size.width / 18,
                ),
              ),
            ),
          Flexible(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffb3ffe6),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "War is always an adventure to those who've never seen it",
                    textWidthBasis: TextWidthBasis.parent,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                        child: Text("March 30")
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class SentMessageListTile extends StatelessWidget{

  SentMessageListTile ({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 15, 6, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Flexible(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffffeb99),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tomorrow, We Are Going To Crush Valhalla And Bring Baji Back To Toman!",
                      textWidthBasis: TextWidthBasis.parent,
                    ),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Text("March 30")
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 4.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => new viewProfilePage(title: 'Profile Page',),
                  ),
                );
              },
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/sano.jpeg"),
                radius: MediaQuery.of(context).size.width / 18,
              ),
            ),
          ),
        ],
      ),
    );
  }


}