class Product {
  String name;
  double price;
  int id;
  String imgUrl;

  Product({
    required this.name,
    required this.price,
    required this.id,
    required this.imgUrl,
  });

  factory Product.fromJson(dynamic json) {
    return Product(
        name: json['name'],
        price: json['price'],
        id: json['id'],
        imgUrl: json['imgUrl']);
  }
}
