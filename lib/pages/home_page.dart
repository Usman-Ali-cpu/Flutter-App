import 'package:flutter/material.dart';
import 'package:iam_rich/models/item.dart';
import 'package:iam_rich/widgets/drawer.dart';
import 'package:iam_rich/widgets/item_widget.dart';

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => CatalogModel.items[0]);
    // TODO: implement build
    int day = 30;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10.0),
        itemCount: dummyList.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemWidget(
            item: dummyList[index],
          );
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
