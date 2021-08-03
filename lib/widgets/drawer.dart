import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: UserAccountsDrawerHeader(
              accountEmail: Text("osman@gmail.com"),
              accountName: Text("Osman Ali"),
            ),
          ),
        ],
      ),
    );
  }
}
