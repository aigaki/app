import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aigaki_app/model/product.dart';
import 'package:aigaki_app/model/shopping_cart_item.dart';
import 'package:aigaki_app/provider/product_catalog.dart';
import 'package:aigaki_app/provider/shopping_cart.dart';
import 'package:aigaki_app/widgets/app_drawer.dart';
import 'package:aigaki_app/widgets/product_cart_info.dart';

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
            name: 'undefined', price: 69, quantity: 420, imgUrl: "lol");
      }
      return ProductCartItemArgs(
          name: p.name,
          price: p.price,
          quantity: item.quantity,
          imgUrl: p.imgUrl);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart Screen'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Stack(
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                ...getRelevantCartProductInfo(context).map(
                  (product) => ProductCartInfo(product: product),
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Checkout'),
              ),
            )
          ],
        ),
      ),
      drawer: const AppDrawer(),
    );
  }
}
