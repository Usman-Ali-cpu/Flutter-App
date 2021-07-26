import 'package:flutter/material.dart';
import 'package:iam_rich/pages/home_page.dart';
import 'package:iam_rich/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      routes: {
        // '/': (context) => HomeApp(),
        '/login': (context) => LoginPage(),
      },
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
