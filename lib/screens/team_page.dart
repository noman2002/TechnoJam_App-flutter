import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:technojam_app/components/team_card.dart';

class TeamPage extends StatefulWidget {
  const TeamPage({Key? key}) : super(key: key);

  @override
  _TeamPageState createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  List _items = [];
  final databaseReference = FirebaseDatabase.instance.reference();
  late final data;
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/json/members.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["members"];
      print(_items.length);
    });
  }
  // void readJson() {
  //   databaseReference.once().then((DataSnapshot snapshot) {
  //     print('Data : ${snapshot.value}');
  //    data = snapshot.value;
  //   });

  //   setState(() {
  //     _items = data["members"];
  //     print(_items.length);
  //   });
  // }

  @override
  void initState() {
    super.initState();

    readJson();
  }

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
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: _items.length,
                itemBuilder: (context, index) {
                  return TeamCard(
                    imageUrl: _items[index]["imageUrl"],
                    name: _items[index]["name"],
                    desc: _items[index]["desc"],
                    githubUrl: _items[index]["githubUrl"],
                    linkedinUrl: _items[index]["linkedinUrl"],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// Column(
//             children: [
//               TeamCard(
//                 imageUrl:
//                     "https://avatars.githubusercontent.com/u/54404474?v=4",
//                 name: "Noman",
//                 desc: "Flutter",
//                 linkedUrl: "https://www.linkedin.com/in/noman-khan-3b9407183/",
//                 githubUrl: "https://github.com/noman2002/",
//               ),
//               TeamCard(
//                 imageUrl:
//                     "https://avatars.githubusercontent.com/u/54404474?v=4",
//                 name: "Noman",
//                 desc: "Flutter",
//               ),
//               TeamCard(
//                 imageUrl:
//                     "https://avatars.githubusercontent.com/u/54404474?v=4",
//                 name: "Noman",
//                 desc: "Flutter",
//               ),
//               TeamCard(
//                 imageUrl:
//                     "https://avatars.githubusercontent.com/u/54404474?v=4",
//                 name: "Noman",
//                 desc: "Flutter",
//               ),
//               TeamCard(
//                 imageUrl:
//                     "https://avatars.githubusercontent.com/u/54404474?v=4",
//                 name: "Noman",
//                 desc: "Flutter",
//               ),
//               TeamCard(
//                 imageUrl:
//                     "https://avatars.githubusercontent.com/u/54404474?v=4",
//                 name: "Noman",
//                 desc: "Flutter",
//               ),
//               TeamCard(
//                 imageUrl:
//                     "https://avatars.githubusercontent.com/u/54404474?v=4",
//                 name: "Noman",
//                 desc: "Flutter",
//               ),
//               TeamCard(
//                 imageUrl:
//                     "https://avatars.githubusercontent.com/u/54404474?v=4",
//                 name: "Noman",
//                 desc: "Flutter",
//               ),
//             ],
//           ),