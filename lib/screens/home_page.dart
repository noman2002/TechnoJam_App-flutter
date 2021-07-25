import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF233C4D),
      appBar: AppBar(
        title: Text("TechnoJam"),
        backgroundColor: Color(0xFF233C4D),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 50.0,
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
      ),
      body: null,
    );
  }
}
