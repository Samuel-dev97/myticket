import 'package:flutter/material.dart';

import '../../main.dart';

class SuccessScreen extends StatefulWidget {
  @override
  _SuccessScreenState createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(180),
        child: SingleChildScrollView(
            child: AppBar(
          centerTitle: true,
          title: Text('Ticket Booking Successful'),
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
          Text(
              'Ticket Booking Successful, details sent to your email, please check'),
          SizedBox(height: 300),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                child: Text('Back'),
                onPressed: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MyApp())),
              )
            ],
          )
        ],
      ),
    );
  }
/*
  Future<void> success() async {
   admin.firestore().collection('mail').add({
  to: 'someone@example.com',
  from: 'somebodyelse@example.com',
  message: {
    subject: 'Hello from Firebase!',
    html: 'This is an <code>HTML</code> email body.',
  },
})
  }
*/
}
