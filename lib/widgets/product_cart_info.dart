import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aigaki_app/model/product.dart';
import 'package:aigaki_app/model/shopping_cart_item.dart';
import 'package:aigaki_app/provider/product_catalog.dart';
import 'package:aigaki_app/provider/shopping_cart.dart';

class ProductCartInfo extends StatelessWidget {
  final String name;
  final double price;
  final int quantity;
  const ProductCartInfo({
    Key? key,
    required this.name,
    required this.price,
    required this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        Text(name),
        Text('{$price}'),
        Text('{$quantity}'),
      ],
    );
  }
}
