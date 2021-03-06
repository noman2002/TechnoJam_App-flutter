import 'package:flutter/material.dart';
import 'package:technojam_app/screens/github_page.dart';
import 'package:technojam_app/screens/linkedin_page.dart';

class TeamCard extends StatelessWidget {
  const TeamCard({
    Key? key,
    required this.name,
    required this.desc,
    this.imageUrl,
    this.linkedinUrl,
    this.githubUrl,
  }) : super(key: key);
  final String name, desc;
  final String? linkedinUrl, githubUrl, imageUrl;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 4.0,
      child: ListTile(
        leading: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              width: 55,
              child: FadeInImage(
                placeholder: AssetImage("assets/images/codingcat.png"),
                image: NetworkImage(imageUrl!),
              ),
            )),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
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
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GithubPage(articleUrl: githubUrl!),
                    ));
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12.0, horizontal: 5),
                child: Image.asset(
                  "assets/images/Octocat.ico",
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LinkedPage(articleUrl: linkedinUrl!),
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Image.asset(
                  "assets/images/Linkedin.ico",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
