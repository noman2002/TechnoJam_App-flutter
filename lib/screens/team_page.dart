import 'package:flutter/material.dart';
import 'package:technojam_app/components/team_card.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF233C4D),
      appBar: AppBar(
        title: Text("Team"),
        backgroundColor: Color(0xFF233C4D),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TeamCard(
                imageUrl:
                    "https://avatars.githubusercontent.com/u/54404474?v=4",
                name: "Noman",
                desc: "Flutter",
                linkedUrl: "https://www.linkedin.com/in/noman-khan-3b9407183/",
                githubUrl: "https://github.com/noman2002/",
              ),
              TeamCard(
                imageUrl:
                    "https://avatars.githubusercontent.com/u/54404474?v=4",
                name: "Noman",
                desc: "Flutter",
              ),
              TeamCard(
                imageUrl:
                    "https://avatars.githubusercontent.com/u/54404474?v=4",
                name: "Noman",
                desc: "Flutter",
              ),
              TeamCard(
                imageUrl:
                    "https://avatars.githubusercontent.com/u/54404474?v=4",
                name: "Noman",
                desc: "Flutter",
              ),
              TeamCard(
                imageUrl:
                    "https://avatars.githubusercontent.com/u/54404474?v=4",
                name: "Noman",
                desc: "Flutter",
              ),
              
              TeamCard(
                imageUrl:
                    "https://avatars.githubusercontent.com/u/54404474?v=4",
                name: "Noman",
                desc: "Flutter",
              ),
              TeamCard(
                imageUrl:
                    "https://avatars.githubusercontent.com/u/54404474?v=4",
                name: "Noman",
                desc: "Flutter",
              ),
              TeamCard(
                imageUrl:
                    "https://avatars.githubusercontent.com/u/54404474?v=4",
                name: "Noman",
                desc: "Flutter",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
