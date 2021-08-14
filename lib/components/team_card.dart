import 'package:flutter/material.dart';

class TeamCard extends StatelessWidget {
  const TeamCard({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.desc,
    this.linkedUrl,
    this.githubUrl,
  }) : super(key: key);
  final String imageUrl, name, desc;
  final String? linkedUrl, githubUrl;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 4.0,
      child: ListTile(
        leading: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        subtitle: Text(
          desc,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 5),
              child: Image.asset(
                "assets/images/Octocat.ico",
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Image.asset(
                "assets/images/Linkedin.ico",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
