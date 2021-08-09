import 'package:flutter/material.dart';


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
      margin: EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      // color: Colors.blueGrey,
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * 0.65,
              child: ClipRRect(child: Image.network(imageUrl)),
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
