import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myticket/src/screens/home.dart';
import 'package:myticket/src/screens/login.dart';
import 'package:myticket/main.dart';
import 'package:myticket/src/screens/resert.dart';
import 'package:myticket/src/screens/retrieve.dart';
import 'package:myticket/src/screens/visa.dart';
import 'package:myticket/src/screens/welcome.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.white24),
      ),
      home: WelcomeScreen(),
    );
  }
}
