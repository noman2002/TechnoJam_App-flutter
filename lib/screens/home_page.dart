import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:technojam_app/screens/announcement_page.dart';
import 'package:technojam_app/screens/setting_page.dart';
import 'package:technojam_app/screens/team_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  final List<Widget?> screen = [
    HomePage(),
    AnnouncementPage(),
    TeamPage(),
    SettingPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF233C4D),
      appBar: AppBar(
        title: Text("TechnoJam"),
        backgroundColor: Color(0xFF233C4D),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        index: selectedIndex,
        height: 60.0,
        buttonBackgroundColor: Colors.pink,
        // color: Color(0xFF82adc9),
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
      body: null,
    );
  }
}
