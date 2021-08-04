import 'package:flutter/material.dart';
import 'package:iam_rich/widgets/drawer.dart';

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    int day = 30;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
        ),
      ),
      body: Container(
        color: Colors.amber,
        child: Center(
          child: Text("$day Days of Flutter "),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
