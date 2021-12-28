import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class modes extends StatefulWidget {
  final auth = FirebaseAuth.instance;
  @override
  State<modes> createState() => _modesState();
}

class _modesState extends State<modes> {
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
            title: Text('Select the mode of transport'),
            backgroundColor: Colors.grey,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50))),
          )),
        ),
        extendBodyBehindAppBar: false,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Ink.image(
                  image: AssetImage('assets/images/plane.png'),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => MyApp()));
                    },
                  ),
                  height: 110,
                  width: 110,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 6),
                Text(
                  'Aeroplane',
                  style: TextStyle(fontSize: 25, color: Colors.grey),
                ),
                Ink.image(
                  image: AssetImage('assets/images/bus.png'),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => MyApp()));
                    },
                  ),
                  height: 110,
                  width: 110,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 6),
                Text(
                  'Bus',
                  style: TextStyle(fontSize: 25, color: Colors.grey),
                ),
                Ink.image(
                  image: AssetImage('assets/images/underground.png'),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => MyApp()));
                    },
                  ),
                  height: 110,
                  width: 110,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 6),
                Text(
                  'Train',
                  style: TextStyle(fontSize: 25, color: Colors.grey),
                ),
                Ink.image(
                  image: AssetImage('assets/images/boat-with-containers.png'),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => modes()));
                    },
                  ),
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 6),
                Text(
                  'Ship',
                  style: TextStyle(fontSize: 25, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
