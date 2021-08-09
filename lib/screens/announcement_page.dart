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
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AnnouncementCard(
                imageUrl:
                    "https://avatars.githubusercontent.com/u/42677092?s=200&v=4",
                title: "TechnoJam",
                desc: "A tech community",
              ),
              AnnouncementCard(
                imageUrl:
                    "https://avatars.githubusercontent.com/u/73706697?v=4",
                title: "Web",
                desc: "Web development workshop",
              ),
              AnnouncementCard(
                imageUrl:
                    "https://avatars.githubusercontent.com/u/54404474?v=4",
                title: "Flutter",
                desc: "Flutter development workshop",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
