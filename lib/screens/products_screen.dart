import 'package:flutter/material.dart';
import 'package:ss_mann/dummy_data/dummy_products.dart';
import 'package:ss_mann/widgets/product_pane.dart';
import 'package:ss_mann/widgets/screens_navigation.dart';

class ProductsScreen extends StatelessWidget {
  static String routeName = '/products';
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: Container(
        child: ListView(
          children: dummyProducts.map((p) => ProductPane(product: p)).toList(),
        ),
      ),
    );
  }
}
