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
        title: Text("Settings"),
        backgroundColor: Color(0xFF233C4D),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _auth.signOut();
        },
        child: null,
      ),
      body: null,
    );
  }
}
