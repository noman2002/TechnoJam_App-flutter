import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:technojam_app/screens/home_page.dart';
import 'package:technojam_app/screens/setting_page.dart';
import 'package:technojam_app/screens/team_page.dart';

import 'announcement_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

   int selectedIndex = 0;
  final List<Widget?> _screen = [
    HomePage(),
    AnnouncementPage(),
    TeamPage(),
    SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[selectedIndex],
      backgroundColor: Color(0xFF233C4D),
      bottomNavigationBar: CurvedNavigationBar(
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        index: selectedIndex,
        height: 60.0,
        buttonBackgroundColor: Colors.pink,
        backgroundColor: Color(0xFF233C4D),
        items: [
          Icon(
            Icons.home,
            size: 30,
          ),
          Icon(
            Icons.campaign,
            size: 30,
          ),
          Icon(
            Icons.people,
            size: 30,
          ),
          Icon(
            Icons.tune,
            size: 30,
          ),
        ],
        onTap: (index) {
          setState(() {
            selectedIndex = index;
            print(selectedIndex);
          });
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}
