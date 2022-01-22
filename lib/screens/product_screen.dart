import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ss_mann/model/product.dart';
import 'package:ss_mann/provider/product_catalog.dart';
import 'package:ss_mann/widgets/app_drawer.dart';

class ProductScreen extends StatelessWidget {
  static String routeName = '/products/:id';
  const ProductScreen({Key? key}) : super(key: key);

  int? getIdFromArgs(BuildContext context) {
    return ModalRoute.of(context)!.settings.arguments as int;
  }

  Product? getProduct(BuildContext context) {
    final id = getIdFromArgs(context);
    if (id == null) {
      return null;
    }
    return Provider.of<ProductCatalog>(context).getProductById(id);
  }

  @override
  Widget build(BuildContext context) {
    final product = getProduct(context);
    if (product == null) {
      return const Scaffold(
        body: Text('Product not found'),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text('${product.name}'),
        ),
        body: Center(child: Text('${product.name}')),
        drawer: const AppDrawer(),
      );
    }
  }
}
