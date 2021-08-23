import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Color(0xFF233C4D),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/tjlogo.png",
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              "TechnoJam",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Throttle",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue[300],
                  ),
                ),
                Text(
                  "To",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Learn",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.pink,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
