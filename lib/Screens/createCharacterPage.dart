import 'package:apartment_housting/Screens/GuestHomePage.dart';
import 'package:flutter/material.dart';

class createCharacterPage extends StatefulWidget {

  static final String routeName = "/createCharacterPageRoute";

  createCharacterPage({super.key, required this.title});

  final String title;

  @override
  State<createCharacterPage> createState() => _createCharacterPageState();
}

class _createCharacterPageState extends State<createCharacterPage> {

  late String _characterType;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Create a Character",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20.0,
            )
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.clear)
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.save)
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(35, 30, 35, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Please fill all the fields:",// to text
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: "Times new Roman",
                  ),
                  textAlign: TextAlign.center,
                ),
                Form(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 80, right: 80,),
                        child:  MaterialButton(
                          onPressed: () {},
                          child: CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: MediaQuery.of(context).size.width/5.75,
                            child: CircleAvatar(
                              backgroundImage: AssetImage("assets/images/default.jpg"),
                              radius: MediaQuery.of(context).size.width/6,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0,),
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: "First name"
                          ),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            fontFamily: "Times new Roman",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: "Last name"
                          ),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            fontFamily: "Times new Roman",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0,),
                        child: DropdownButton(
                          isExpanded: true,
                          value: _characterType,
                          hint: Text("Select a character role"),
                          items: [
                            DropdownMenuItem(child: Text("The protagonist"), value: "The protagonist",),
                            DropdownMenuItem(child: Text("The antagonist"), value: "The antagonist",),
                            DropdownMenuItem(child: Text("The love interest"), value: "The love interest",),
                            DropdownMenuItem(child: Text("Deuteragonists"), value: "Deuteragonists",),
                          ],
                          onChanged: (value) {} ,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0,),
                        child: Row(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                  labelText: "E-mail"
                              ),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                fontFamily: "Times new Roman",
                              ),
                            ),
                            Text(""),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0,),
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: "Password"
                          ),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            fontFamily: "Times new Roman",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0,),
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: "Bio"
                          ),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            fontFamily: "Times new Roman",
                          ),
                          maxLines: 4,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
