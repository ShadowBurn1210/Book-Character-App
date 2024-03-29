import 'dart:async';
import 'package:apartment_housting/Models/appConstants.dart';
import 'package:apartment_housting/Screens/ConversationPage.dart';
import 'package:apartment_housting/Screens/GuestHomePage.dart';
import 'package:apartment_housting/Screens/LoginPage.dart';
import 'package:apartment_housting/Screens/personalInfoPage.dart';
import 'package:apartment_housting/Screens/signUpPage.dart';
import 'package:apartment_housting/Screens/viewProfilePage.dart';
import 'package:apartment_housting/Screens/authorHomePage.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fictional characters',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const MyHomePage(title: 'Fictional character app'),
      routes: {
        LoginPage.routeName: (context) => LoginPage(title: "Log in",),
        SignUpPage.routeName: (context) => SignUpPage(title: "Sign Up",),
        GuestHomePage.routeName: (context) => GuestHomePage(title: "Home Page",),
        personalInfoPage.routeName: (context) => personalInfoPage(title: "Personal Info",),
        viewProfilePage.routeName: (context) => viewProfilePage(title: "View Profile",),
        ConversationPage.routeName: (context) => ConversationPage(title: "Conversations",),
        authorHomePage.routeName: (context) => authorHomePage(title: "Author Home Page",),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {

    Timer(Duration(seconds: 2), () {
      Navigator.pushNamed(context, LoginPage.routeName);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.person,
              size: 120,
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0,),
              child: Text(
                  "${app_constants.appName}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontFamily: "Times new Roman",
                  ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
