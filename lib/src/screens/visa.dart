import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myticket/src/screens/resert.dart';

class VisaScreen extends StatefulWidget {
  @override
  _VisaScreenState createState() => _VisaScreenState();
}

class _VisaScreenState extends State<VisaScreen> {
  late String _name, _email, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(180),
        child: SingleChildScrollView(
            child: AppBar(
          centerTitle: true,
          title: Text('VISA Payment'),
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
              decoration: InputDecoration(hintText: 'Bank Account Name/Type'),
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
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: 'Visa Card Number'),
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
              maxLength: 3,
              keyboardType: TextInputType.number,
              obscureText: true,
              decoration: InputDecoration(hintText: 'CCY'),
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
              ElevatedButton(child: Text('ENTER'), onPressed: () {}),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                child: Text('Forgot Password'),
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ResertScreen())),
              )
            ],
          )
        ],
      ),
    );
  }
}
