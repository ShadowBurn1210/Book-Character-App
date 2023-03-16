import 'package:apartment_housting/Models/appConstants.dart';
import 'package:apartment_housting/Screens/accountPage.dart';
import 'package:apartment_housting/Screens/explorePage.dart';
import 'package:apartment_housting/Screens/inboxPage.dart';
import 'package:apartment_housting/Screens/savedPage.dart';
import 'package:apartment_housting/Screens/signUpPage.dart';
import 'package:apartment_housting/Screens/animePage.dart';
import 'package:apartment_housting/Views/TextWidgets.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import '';



class GuestHomePage extends StatefulWidget {

  static final String routeName = "/GuestHomePageRoute";

  GuestHomePage({super.key, required this.title});

  final String title;

  @override
  State<GuestHomePage> createState() => _GuestHomePageState();
}

class _GuestHomePageState extends State<GuestHomePage> {

  int _selectedIndex = 0; // initial page were it goes

  final List<String> pageTitles = [
    "Explore",
    "Favorite",
    "Series",
    "Inbox",
    "Profile"
  ];

  final List<Widget> _pages = [
    ExplorePage(title: "Explore Page"),
    SavedPage(title: "Favorite Characters Page"),
    AnimePage(title: "Series/Book Page"),
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
          _buildNavigationItem(0, Icons.search, pageTitles[0]),
          _buildNavigationItem(1, Icons.favorite_border,  pageTitles[1]),
          _buildNavigationItem(2, Icons.tv,  pageTitles[2]),
          _buildNavigationItem(3, Icons.message,  pageTitles[3]),
          _buildNavigationItem(4, Icons.person_outline,  pageTitles[4]),
        ],
      ),
    );

  }
}
