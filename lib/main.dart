import 'package:flutter/material.dart';
import 'package:iam_rich/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeApp(),
    );
  }
}










/*
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[700],
          title: Text("I Am Rich"),
          centerTitle: true,
        ),
        body: Center(
          child: Image(
              image: AssetImage('images/dia.png'),
          ),
        )
      ),
    );
  }
}
 */
