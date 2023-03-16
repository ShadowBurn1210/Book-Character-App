import 'package:apartment_housting/Models/appConstants.dart';
import 'package:apartment_housting/Screens/GuestHomePage.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class SignUpPage extends StatefulWidget {

  static final String routeName = "/signUpPageRoute";

  SignUpPage({super.key, required this.title});

  final String title;

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  void _signUp() {
    Navigator.pushNamed(context, GuestHomePage.routeName);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign Up",
          style: TextStyle(
            fontWeight: FontWeight.bold,
              color: Colors.white,
            fontSize: 20.0,
          )
        ),
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
                              labelText: "City"
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
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: "Username"
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
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: "E-mail"
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
                Padding(
                  padding: const EdgeInsets.only(top: 35.0, left: 80, right: 80, bottom: 35.0),
                  child: MaterialButton(
                    onPressed: () {
                      _signUp();
                    },
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontFamily: "Times new Roman",
                      ),
                    ),
                    color: Colors.greenAccent,
                    height: MediaQuery.of(context).size.height/ 15,
                    minWidth: double.infinity,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
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
