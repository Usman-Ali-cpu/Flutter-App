import 'package:flutter/material.dart';

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    int day = 30;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[700],
        title: Text("App Bar"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Text("$day Days of Flutter "),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
