import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aigaki_app/provider/product_catalog.dart';
import 'package:aigaki_app/widgets/app_drawer.dart';
import 'package:aigaki_app/widgets/product_grid.dart';

class ProductsScreen extends StatelessWidget {
  static String routeName = '/products';
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final products = Provider.of<ProductCatalog>(context).productList;
    final resetProducts =
        Provider.of<ProductCatalog>(context, listen: false).resetProduct;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: ProductGrid(
          products: products,
        ),
      ),
      drawer: const AppDrawer(),
      floatingActionButton: Stack(
        children: [
          FloatingActionButton(
            child: const Icon(Icons.ac_unit_rounded),
            onPressed: resetProducts,
          ),
        ],
      ),
    );
  }
}
