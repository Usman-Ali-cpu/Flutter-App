import 'package:flutter/material.dart';
import 'package:iam_rich/models/item.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: ListTile(
        leading: Hero(
          tag: Key(item.id.toString()),
          child: Image.network(item.image),
        ),
        title: Text(item.name),
        subtitle: Text(item.description),
        trailing: Text(
          "\$${item.price}",
          style: TextStyle(
            color: Colors.cyan[700],
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
