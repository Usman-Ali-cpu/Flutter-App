import 'package:flutter/material.dart';
import 'package:iam_rich/models/cart_list.dart';
import 'package:iam_rich/models/item.dart';
import 'package:iam_rich/pages/cart_page.dart';
import 'package:iam_rich/pages/checkout_page.dart';

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
  int data = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[50],
        title: Text(widget.catalog.name),
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart_sharp,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CartPage()));
              // do something
            },
          )
        ],
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
                          label: const Text('',
                              style: TextStyle(
                                color: Colors.white,
                              )),
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
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
                              if (data > 0) {
                                data = data - 1;
                              }
                            });
                          },
                          label: const Text(
                            '',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          icon: Padding(
                            padding: EdgeInsets.only(bottom: 15.0),
                            child: const Icon(
                              Icons.minimize_outlined,
                              color: Colors.white,
                            ),
                          ),
                          backgroundColor: Colors.pink,
                        ),
                        SizedBox(
                          width: 90.0,
                        ),
                        Text(
                          "\$" + widget.catalog.price.toString(),
                          style: TextStyle(
                            fontSize: 26.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.cyan[800],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Center(
                        child: Text(
                          widget.catalog.description,
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[700],
                            fontFamily: 'Hind',
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 5.0,
                    // ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        "This is best selling phone of market today. Company is also giving a discount on it. But I must explain to you how. I will give you a complete account of the system. Get your best phone by clicking Buy now.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          fontFamily: "roboto",
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
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
              if (CartList.cartItems.contains(widget.catalog)) {
                CartList.cartItems.remove(widget.catalog);
                setState(() {
                  CartList.cartItems.contains(widget.catalog)
                      ? const Icon(Icons.delete)
                      : const Icon(Icons.shopping_basket_outlined);
                });
              } else {
                CartList.cartItems.add(widget.catalog);
                setState(() {
                  CartList.cartItems.contains(widget.catalog)
                      ? const Icon(Icons.delete)
                      : const Icon(Icons.shopping_basket_outlined);
                });
              }
              // Add your onPressed code here!
            },
            label: CartList.cartItems.contains(widget.catalog)
                ? const Text('Remove')
                : const Text('Add Cart'),
            icon: CartList.cartItems.contains(widget.catalog)
                ? const Icon(Icons.delete)
                : const Icon(Icons.shopping_basket_outlined),
            backgroundColor: Colors.yellow[700],
          ),
          SizedBox(
            width: 70.0,
          ),
          FloatingActionButton.extended(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CheckOut()));
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
