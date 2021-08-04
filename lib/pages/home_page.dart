import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iam_rich/models/item.dart';
import 'package:iam_rich/widgets/drawer.dart';
import 'package:iam_rich/widgets/item_widget.dart';

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  final String name = "osman";
  final int day = 30;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("images/catalog.json");
    var decodeData = jsonDecode(catalogJson);
    var productsData = decodeData['Products'];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    CatalogModel.items = List.generate(
        CatalogModel.items.length, (index) => CatalogModel.items[index]);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
        ),
      ),
      body: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
          ? ListView.builder(
              padding: EdgeInsets.all(10.0),
              itemCount: CatalogModel.items.length,
              itemBuilder: (BuildContext context, int index) {
                return ItemWidget(
                  item: CatalogModel.items[index],
                );
              },
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
      drawer: MyDrawer(),
    );
  }
}
