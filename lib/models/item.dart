class CatalogModel {
  static List<Item> items = [];
}

class Item {
  final int id;
  final String name;
  final num price;
  final String description;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.color,
    required this.image,
  });
  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        price: map["price"],
        description: map["description"],
        color: map["color"],
        image: map["image"]);
  }
  tomap() => {
        "id": id,
        "name": name,
        "price": price,
        "description": description,
        "color": color,
        "image": image,
      };
}
