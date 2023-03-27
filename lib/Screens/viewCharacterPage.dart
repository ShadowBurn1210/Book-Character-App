import 'package:apartment_housting/Models/appConstants.dart';
import 'package:apartment_housting/Screens/GuestHomePage.dart';
import 'package:apartment_housting/Screens/finishedBook.dart';
import 'package:apartment_housting/Screens/viewAuthorProfilePage.dart';
import 'package:apartment_housting/Views/TextWidgets.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:apartment_housting/Views/formWidget.dart';
import '../Views/listWidgets.dart';

class viewCharacterPage extends StatefulWidget {

  static final String routeName = "/viewCharacterPageRoute";

  viewCharacterPage({super.key, required this.title});

  final String title;

  @override
  State<viewCharacterPage> createState() => _viewCharacterPageState();
}

class _viewCharacterPageState extends State<viewCharacterPage> {

  List<String> _deeds = [
    "Killed Tyrant who ruled 1000 years",
    "Sacrificed herself to kill God of Destruction",
    "Became God, by accepting power from mist",
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: AppBarText(text: "Character Profile"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.save, color: Colors.white,)
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
            children: [
              SizedBox(
                height: 500,
                width: 350,
                child: AspectRatio(
                  aspectRatio: 1/4,
                  child: PageView.builder(
                      itemCount: 3,
                      itemBuilder: (context,index) {
                        return Image(
                          image: AssetImage("assets/images/vinCool.jpg"),
                          fit: BoxFit.fill,
                        );
                      }
                      ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(25, 10, 25, 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 28.0),
                          child: Column(
                            children: [
                              Text(
                                  "Vin",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ),
                              Text(
                                  "Mistborn series",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            MaterialButton(
                              color: Colors.lightBlueAccent,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                    builder: (context) => new finishedBookPage(title: 'Charecter Page',),
                                  ),
                                );
                              },
                              child: Text(
                                "Finished book",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                              Container(
                                width: MediaQuery.of(context).size.width/1.15,
                                child: AutoSizeText(
                                "Main protagonist in Mistbron triliogy. Vin is a half-skaa Mistborn from the Final Empire on Scadrial. Has the mistborn powers since the birth",
                                style: TextStyle(
                                ),
                                  minFontSize: 14,
                                  maxFontSize: 25,
                                  maxLines: 4,
                          ),
                              ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Column(
                        children: [
                          PostingInfoTile(
                            iconData: Icons.book,
                            category: "Fictional character",
                            categoryInfo: "Appearance in 3 books",
                          ),
                          PostingInfoTile(
                            iconData: Icons.person,
                            category: "Main Character in series",
                            categoryInfo: "Role: protagonist",
                          ),
                          PostingInfoTile(
                            iconData: Icons.speaker_notes,
                            category: "Best Quote",
                            categoryInfo: "It's a mystery, we Mistborn are incredibly mysterious.",
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                          "Author:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25
                        ),
                      ),
                    ),
                    Row(
                    children: [
                      MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                            builder: (context) => new viewAuthorProfilePage(title: 'Author Profile',),
                          ),
                        );
                      },
                        child: CircleAvatar(
                          radius: MediaQuery.of(context).size.width/12,
                          backgroundColor: Colors.black,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/images/brandon.jpg"),
                            radius: MediaQuery.of(context).size.width/13,
                          ),
                        ),
                      ),
                      Text(
                              "Brandon Sanderson",
                        style: TextStyle(
                          fontSize: 18
                        ),
                      )
                    ],
                  ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 0.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                            "Heroic Deeds:",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            "Killed Tyrant who ruled 1000 years",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          ),
                      ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                          "Sacrificed herself to kill God of Destruction",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                        "Became God, by accepting power from mist",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                        ),
                  ],
                    ),

                    // GridView.count(
                    //   crossAxisCount: 2,
                    //   shrinkWrap: true,
                    //   childAspectRatio: 4/1,
                    //   children: List.generate(
                    //       _deeds.length,
                    //       (index) {
                    //         return Text(
                    //             _deeds
                    //         );
                    //       }
                    //   ),
                    // ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                          "The Location:",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                    Text(
                        "Central Dominance, Luthadel, House of Venture",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: Text(
                          "Reviews",
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    reviewForm(title: "Review form", ),
                    // ListView.builder(itemBuilder: itemBuilder),
                  ],
                ),
              ),
            ],
          ),
        )
      );
  }
}


class PostingInfoTile extends StatelessWidget{


  final IconData iconData;
  final String category;
  final String categoryInfo;

  PostingInfoTile({super.key, required this.iconData, required this.category, required this.categoryInfo});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
          this.iconData,
        size: 25,
      ),
      title: Text(
          category,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,

        ),
      ),
      subtitle: Text(
          categoryInfo,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }

}