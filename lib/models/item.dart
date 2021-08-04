class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "i-phone 12 pro",
        price: 19000,
        description: "I new Model in very reasonable price",
        color: "#33505a",
        image:
            "https://static.digit.in/product/284c81498a93a82db7b5db6600494c20bee4f18e.jpeg?tr=w-1200"),
  ];
}

class Item {
  final num id;
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
}
