import 'package:flutter/material.dart';
import 'package:myticket/src/screens/home.dart';
import 'package:myticket/src/screens/login.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/login.jpeg'),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Column(
              children: [
                ElevatedButton(
                  child: Text('SIGN IN'),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      primary: Colors.grey.withOpacity(0.3),
                      padding:
                          EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  child: Text('SIGN UP'),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      primary: Colors.blue.withOpacity(0.3),
                      padding:
                          EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
