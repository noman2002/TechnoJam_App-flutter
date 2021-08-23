import 'package:flutter/material.dart';
import 'package:technojam_app/screens/bottom_nav_bar.dart';
import 'package:technojam_app/screens/login_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Color(0xFF233C4D),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/tjlogo.png",
                fit: BoxFit.contain,
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
              SizedBox(
                height: 80,
              ),
              Text(
                "Member of Technojam",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 300,
                  minHeight: 40,
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.pink),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Not a member. No worries !!",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 300,
                  minHeight: 40,
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.pink),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NavBar(),
                      ),
                    );
                  },
                  child: Text(
                    "Use as Guest",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
