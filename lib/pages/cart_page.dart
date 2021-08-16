import 'package:flutter/material.dart';
import 'package:iam_rich/models/cart_list.dart';
import 'package:iam_rich/pages/checkout_page.dart';
import 'package:iam_rich/pages/home_detail_page.dart';
import 'package:iam_rich/widgets/item_widget.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping Cart"),
        actions: [],
      ),
      body: (CartList.cartItems != null && CartList.cartItems.isNotEmpty)
          ? ListView.builder(
              padding: EdgeInsets.all(10.0),
              itemCount: CartList.cartItems.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              HomeDetail(catalog: CartList.cartItems[index]))),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 6.0),
                    child: ItemWidget(
                      item: CartList.cartItems[index],
                    ),
                  ),
                );
              },
            )
          : Container(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Text(
                  "Nothing In a Cart",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24.0),
        child: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CheckOut()));
          },
          label: Text("Go To CheckOut"),
          icon: const Icon(Icons.payments),
        ),
      ),
    );
  }
}
