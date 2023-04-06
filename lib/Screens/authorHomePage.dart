import 'package:apartment_housting/Models/appConstants.dart';
import 'package:apartment_housting/Screens/AddedCharactersPage.dart';
import 'package:apartment_housting/Screens/MyCharactersPage.dart';
import 'package:apartment_housting/Screens/accountPage.dart';
import 'package:apartment_housting/Screens/inboxPage.dart';
import 'package:apartment_housting/Views/TextWidgets.dart';
import 'package:flutter/material.dart';




class authorHomePage extends StatefulWidget {

  static final String routeName = "/authorHomePageRoute";

  authorHomePage({super.key, required this.title});

  final String title;

  @override
  State<authorHomePage> createState() => _authorHomePageState();
}

class _authorHomePageState extends State<authorHomePage> {

  int _selectedIndex = 3; // initial page were it goes

  final List<String> pageTitles = [
    "Added Heros",
    "Characters",
    "Inbox",
    "Profile"
  ];

  final List<Widget> _pages = [
    AddedCharactersPage(title: "Inbox Page"),
    MyCharactersPage(title: "Account Page"),
    InboxPage(title: "Inbox Page"),
    AccountPage(title: "Account Page"),
  ];

  BottomNavigationBarItem _buildNavigationItem(int index, IconData iconData, String text ) {
    return BottomNavigationBarItem(
        icon: Icon(iconData, color: app_constants.nonSelectedIconColor),
        activeIcon: Icon(iconData, color: app_constants.selectedIconColor),
        label: text
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: AppBarText(text: pageTitles[_selectedIndex]),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          _buildNavigationItem(0, Icons.calendar_month,  pageTitles[0]),
          _buildNavigationItem(1, Icons.people,  pageTitles[1]),
          _buildNavigationItem(2, Icons.message,  pageTitles[2]),
          _buildNavigationItem(3, Icons.person_outline,  pageTitles[3]),
        ],
      ),
    );

  }
}
