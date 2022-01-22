import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ss_mann/model/product.dart';
import 'package:ss_mann/model/shopping_cart_item.dart';
import 'package:ss_mann/provider/product_catalog.dart';
import 'package:ss_mann/provider/shopping_cart.dart';
import 'package:ss_mann/widgets/app_drawer.dart';
import 'package:ss_mann/widgets/product_cart_info.dart';

class ProductCartItemArgs {
  String name;
  double price;
  int quantity;

  ProductCartItemArgs(
      {required this.name, required this.price, required this.quantity});
}

class CartScreen extends StatelessWidget {
  static String routeName = '/cart';
  const CartScreen({Key? key}) : super(key: key);

  List<ShoppingCartItem> getShoppingCartItems(BuildContext context) {
    return Provider.of<ShoppingCart>(context).items;
  }

  Product? Function(int) getProductById(BuildContext context) {
    return Provider.of<ProductCatalog>(context).getProductById;
  }

  Iterable<ProductCartItemArgs> getRelevantCartProductInfo(
      BuildContext context) {
    final shoppingCartItems = getShoppingCartItems(context);
    return shoppingCartItems.map((item) {
      final p = getProductById(context)(item.productId);
      if (p == null) {
        return ProductCartItemArgs(
          name: 'undefined',
          price: 69,
          quantity: 420,
        );
      }
      return ProductCartItemArgs(
        name: p.name,
        price: p.price,
        quantity: item.quantity,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart Screen'),
      ),
      body: ListView(children: [
        ...getRelevantCartProductInfo(context).map((e) =>
            ProductCartInfo(name: e.name, price: e.price, quantity: e.quantity))
      ]),
      drawer: const AppDrawer(),
    );
  }
}
