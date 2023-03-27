import 'package:apartment_housting/Models/appConstants.dart';
import 'package:apartment_housting/Screens/signUpPage.dart';
import 'package:apartment_housting/Views/gridWidgets.dart';
import 'package:flutter/material.dart';

import 'viewCharacterPage.dart';

class ExplorePage extends StatefulWidget {

  ExplorePage({super.key, required this.title});

  final String title;

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.fromLTRB(25,15,25,0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2.0,
                        )
                      ), contentPadding: EdgeInsets.all(7.0)
                    ),
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: GridView.builder(
                      physics: ScrollPhysics(),
                      itemCount: 2,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                        childAspectRatio: 4/5
                        ),
                      itemBuilder: (context, index) {
                          return InkResponse(
                            enableFeedback: true,
                            child: PostingGridTile(),
                            onTap: () {
                              Navigator.push(
                                context,
                                new MaterialPageRoute(
                                  builder: (context) => new viewCharacterPage(title: 'Charecter Page',),
                                ),
                              );
                            },
                          );
                          },
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
