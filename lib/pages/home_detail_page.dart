import 'package:flutter/material.dart';
import 'package:iam_rich/models/item.dart';

class HomeDetail extends StatefulWidget {
  Item catalog;
  HomeDetail({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  @override
  _HomeDetailState createState() => _HomeDetailState();
}

class _HomeDetailState extends State<HomeDetail> {
  int data = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[50],
        title: Text(widget.catalog.name),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Hero(
                tag: Key(widget.catalog.id.toString()),
                child: Image.network(widget.catalog.image),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Center(
                        child: Text(
                          widget.catalog.description,
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "This is best selling phone of market today. Company is also giving a discount on it. Get your best phone by clicking Buy now.",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10.0,
                        ),
                        FloatingActionButton.extended(
                          onPressed: () {
                            setState(() {
                              data = data + 1;
                            });
                          },
                          label: const Text(
                            'Inc',
                          ),
                          icon: const Icon(Icons.add),
                          backgroundColor: Colors.blue,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          data.toString(),
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        FloatingActionButton.extended(
                          onPressed: () {
                            setState(() {
                              data = data - 1;
                            });
                          },
                          label: const Text(
                            'Dec',
                          ),
                          icon: Padding(
                            padding: EdgeInsets.only(bottom: 15.0),
                            child: const Icon(Icons.minimize_outlined),
                          ),
                          backgroundColor: Colors.pink,
                        ),
                        SizedBox(
                          width: 70.0,
                        ),
                        Text("\$" + widget.catalog.price.toString(),
                            style: TextStyle(
                              fontSize: 26.0,
                              fontWeight: FontWeight.w900,
                              color: Colors.cyan[800],
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        children: [
          SizedBox(
            width: 50.0,
          ),
          FloatingActionButton.extended(
            onPressed: () {
              // Add your onPressed code here!
            },
            label: const Text('Add Cart'),
            icon: const Icon(Icons.shopping_basket_outlined),
            backgroundColor: Colors.yellow[700],
          ),
          SizedBox(
            width: 70.0,
          ),
          FloatingActionButton.extended(
            onPressed: () {
              // Add your onPressed code here!
            },
            label: const Text('Buy Now'),
            icon: const Icon(Icons.monetization_on_sharp),
            backgroundColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
