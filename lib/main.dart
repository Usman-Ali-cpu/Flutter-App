import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
          child: Container(
              child: Center(
                child: Text("Thirty Days of Flutter "),
              )
          )
      ),

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
