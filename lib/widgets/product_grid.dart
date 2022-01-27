import 'package:flutter/material.dart';
import 'package:aigaki_app/model/product.dart';
import 'package:aigaki_app/widgets/product_pane.dart';

class ProductGrid extends StatelessWidget {
  final List<Product> products;
  const ProductGrid({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      children: [
        ...products.map(
          (product) => ProductPane(product: product),
        ),
      ],
    );
  }
}
