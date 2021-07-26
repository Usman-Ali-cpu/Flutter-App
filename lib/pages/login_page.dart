import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget w = Scaffold(
      body: Center(
        child: Text(
          "Login Page ",
          style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w500,
              color: Colors.blue[700],
              fontFamily: 'roboto'),
        ),
      ),
    );
    if (w != null) {
      return w;
    } else {
      return MaterialApp();
    }
  }
}
