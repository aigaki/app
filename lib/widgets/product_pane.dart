import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ss_mann/model/product.dart';
import 'package:ss_mann/provider/shopping_cart.dart';
import 'package:ss_mann/screens/product_screen.dart';

class ProductPane extends StatelessWidget {
  final Product product;
  final Function(int)? onClick;
  const ProductPane({Key? key, required this.product, this.onClick})
      : super(key: key);

  void goToProductPage(BuildContext context) {
    Navigator.of(context)
        .pushNamed(ProductScreen.routeName, arguments: product.id);
  }

  @override
  Widget build(BuildContext context) {
    final isItemInCart =
        Provider.of<ShoppingCart>(context).isItemInCart(product.id);
    final additemToCart =
        Provider.of<ShoppingCart>(context, listen: false).addItemToCart;
    final removeItemFromCart =
        Provider.of<ShoppingCart>(context, listen: false).removeItemFromCart;

    return GestureDetector(
      // onTap: () => removeProductById(product.id),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Flex(
            direction: Axis.vertical,
            children: [
              Image.network(
                product.imgUrl,
                height: 50,
              ),
              const SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  product.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Flex(
                direction: Axis.horizontal,
                children: [
                  IconButton(
                    onPressed: isItemInCart
                        ? () => removeItemFromCart(product.id)
                        : () => additemToCart(product.id),
                    icon: Icon(isItemInCart
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
          ),
          decoration: BoxDecoration(
            color: Colors.red[50],
          ),
        ),
      ),
    );
  }
}
