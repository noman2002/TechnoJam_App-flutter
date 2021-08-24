import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF233C4D),
      appBar: AppBar(
        title: Text("Extras"),
        backgroundColor: Color(0xFF233C4D),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.school_outlined,
              color: Colors.white,
            ),
            title: Text(
              "Alumni",
              textScaleFactor: 1.3,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.emoji_events_outlined,
              color: Colors.white,
            ),
            title: Text(
              "Achievers",
              textScaleFactor: 1.3,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.settings_suggest_outlined,
              color: Colors.white,
            ),
            title: Text(
              "Settings",
              textScaleFactor: 1.3,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.lightbulb_outline,
              color: Colors.white,
            ),
            title: Text(
              "About Us",
              textScaleFactor: 1.3,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.power_settings_new,
              color: Colors.white,
            ),
            title: Text(
              "Sign Out",
              textScaleFactor: 1.3,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {
              _auth.signOut();
            },
          ),
        ],
      ),
    );
  }
}
