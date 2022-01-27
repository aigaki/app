import 'package:flutter/material.dart';

class ProductCartItemArgs {
  String name;
  String imgUrl;
  double price;
  int quantity;

  ProductCartItemArgs(
      {required this.name,
      required this.price,
      required this.quantity,
      required this.imgUrl});
}

class ProductCartInfo extends StatelessWidget {
  final ProductCartItemArgs product;
  const ProductCartInfo({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        product.imgUrl,
        width: 30,
      ),
      title: Row(
        children: [
          Text(
            product.name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 4,
          ),
          Text('${product.price}'),
        ],
      ),
    );
  }
}
