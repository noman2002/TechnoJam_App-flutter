import 'package:flutter/material.dart';

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

class AnnouncementCard extends StatelessWidget {
  const AnnouncementCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.desc,
  }) : super(key: key);
  final String imageUrl, title, desc;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey,
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * 0.65,
              child: Image.network(imageUrl, fit: BoxFit.cover),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: TextStyle(
                  color: Colors.pinkAccent,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              desc,
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}


// ListTile(
//         leading: Container(
//           width: double.infinity,
//           height: double.infinity,
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(6),
//             child: Image.network(
//               imageUrl,
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//         title: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             title,
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//         subtitle: Text(
//           desc,
//           style: TextStyle(
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),