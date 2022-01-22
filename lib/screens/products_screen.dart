import 'package:flutter/material.dart';
import 'package:ss_mann/dummy_data/dummy_products.dart';
import 'package:ss_mann/widgets/product_grid.dart';

class ProductsScreen extends StatelessWidget {
  static String routeName = '/products';
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: ProductGrid(
          products: dummyProducts,
        ),
      ),
    );
  }
}
