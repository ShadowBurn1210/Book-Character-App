import 'package:apartment_housting/Models/appConstants.dart';
import 'package:apartment_housting/Screens/GuestHomePage.dart';
import 'package:apartment_housting/Screens/signUpPage.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class LoginPage extends StatefulWidget {

  static final String routeName = "/loginPageRoute";

  LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  void _signUp () {
    Navigator.pushNamed(context, SignUpPage.routeName);
  }

  void _login () {
    Navigator.pushNamed(context, GuestHomePage.routeName);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(35, 125, 35, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(
                Icons.tv,
                size: 60,
              ),
              Text(
                  "Welcome to ${app_constants.appName}",// to text
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontFamily: "Times new Roman",
                ),
                textAlign: TextAlign.center,
              ),
                Form(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0,),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: "Username/email"
                            ),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              fontFamily: "Times new Roman",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
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
                        )
                      ],
                    ),
                ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0, left: 30, right: 30,),
                child: MaterialButton(
                    onPressed: () {
                      _login();
                    },
                    child: Text(
                        "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontFamily: "Times new Roman",
                      ),
                    ),
                  color: Colors.cyan,
                  height: MediaQuery.of(context).size.height/ 15,
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 30, right: 30,),
                  child: MaterialButton(
                    onPressed: () {
                      _signUp();
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontFamily: "Times new Roman",
                      ),
                    ),
                    color: Colors.lightBlueAccent,
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
    );
  }
}
