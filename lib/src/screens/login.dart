import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myticket/src/screens/home.dart';
import 'package:myticket/src/screens/resert.dart';
import 'package:myticket/src/screens/retrieval.dart';
import 'package:myticket/src/screens/retrieve.dart';
import 'package:myticket/src/screens/verify.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String _name, _email, _password;
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white24,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(180),
          child: SingleChildScrollView(
              child: AppBar(
            centerTitle: true,
            title: Text('Login'),
            backgroundColor: Colors.grey,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50))),
          )),
        ),
        extendBodyBehindAppBar: false,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(hintText: 'Full Name'),
                onChanged: (value) {
                  setState(() {
                    _name = value.trim();
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(hintText: 'Email'),
                onChanged: (value) {
                  setState(() {
                    _email = value.trim();
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(hintText: 'Password'),
                onChanged: (value) {
                  setState(() {
                    _password = value.trim();
                  });
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    child: Text('Sign In'),
                    onPressed: () {
                      auth
                          .signInWithEmailAndPassword(
                              email: _email, password: _password)
                          .then((_) {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => modes()));
                      });
                    }),
                ElevatedButton(
                    child: Text('Sign Up'),
                    onPressed: () {
                      auth
                          .createUserWithEmailAndPassword(
                              email: _email, password: _password)
                          .then((_) {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => RetrieveScreen()));
                        ;
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => VerifyScreen()));
                      });
                    }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  child: Text('Forgot Password'),
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => RetrievalScreen())),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
