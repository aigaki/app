import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aigaki_app/model/product.dart';
import 'package:aigaki_app/provider/shopping_cart.dart';
import 'package:aigaki_app/screens/cart_screen.dart';
import 'package:aigaki_app/screens/product_screen.dart';

class ProductPane extends StatelessWidget {
  final Product product;
  const ProductPane({Key? key, required this.product}) : super(key: key);

  void goToProductPage(BuildContext context) {
    Navigator.of(context)
        .pushNamed(ProductScreen.routeName, arguments: product.id);
  }

  void goToCartScreen(BuildContext context) {
    Navigator.of(context).pushNamed(CartScreen.routeName);
  }

  void addToCartAndShowSnackBar(BuildContext context) {
    Provider.of<ShoppingCart>(context, listen: false).addItemToCart(product.id);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Added to cart'),
        action: SnackBarAction(
          label: 'Go to cart',
          onPressed: () => goToCartScreen(context),
        ),
      ),
    );
  }

  bool isItemInCart(BuildContext context) =>
      Provider.of<ShoppingCart>(context).isItemInCart(product.id);

  void removeItemFromCart(BuildContext context) =>
      Provider.of<ShoppingCart>(context, listen: false)
          .removeItemFromCart(product.id);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: InkWell(
      onTap: () {
        print('hello');
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add_shopping_cart_outlined),
                  visualDensity: VisualDensity.compact,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_outline),
                  visualDensity: VisualDensity.compact,
                )
              ],
            ),
            Image.network(
              product.imgUrl,
              height: 50,
              // height: 50,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              product.name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        ),
      ),
    ));

    Flex(
      direction: Axis.vertical,
      children: [
        Text(
          product.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Flex(
          direction: Axis.horizontal,
          children: [
            IconButton(
              onPressed: isItemInCart(context)
                  ? () => removeItemFromCart(context)
                  : () => addToCartAndShowSnackBar(context),
              icon: Icon(isItemInCart(context)
                  ? Icons.add_shopping_cart
                  : Icons.remove_shopping_cart),
            ),
            IconButton(
              color: Colors.red,
              onPressed: () => goToProductPage(context),
              icon: const Icon(Icons.arrow_forward),
            ),
          ],
        )
      ],
    );
  }
}
