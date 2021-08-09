import 'package:flutter/material.dart';
import 'package:technojam_app/components/announcement_card.dart';

class AnnouncementPage extends StatelessWidget {
  const AnnouncementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF233C4D),
      appBar: AppBar(
        title: Text("Announcements"),
        backgroundColor: Color(0xFF233C4D),
      ),
      body: AnnouncementCard(
        imageUrl: "https://avatars.githubusercontent.com/u/54404474?v=4",
        title: "Nhi bataunga",
        desc: "jaaaaduuuuu",
      ),
    );
  }
}

