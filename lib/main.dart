import 'package:flutter/material.dart';
import 'package:technojam_app/screens/announcement_page.dart';
import 'package:technojam_app/screens/login_page.dart';
import 'package:technojam_app/screens/start_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: AnnouncementPage(),
    );
  }
}
