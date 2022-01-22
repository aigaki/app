import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ss_mann/model/product.dart';
import 'package:ss_mann/provider/product_catalog.dart';
import 'package:ss_mann/provider/shopping_cart.dart';

class ProductPane extends StatelessWidget {
  final Product product;
  final Function(int)? onClick;
  const ProductPane({Key? key, required this.product, this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final removeProductById =
        Provider.of<ProductCatalog>(context, listen: false).removeProductById;
    final isItemInCart =
        Provider.of<ShoppingCart>(context).isItemInCart(product.id);
    final additemToCart =
        Provider.of<ShoppingCart>(context, listen: false).addItemToCart;
    final removeItemFromCart =
        Provider.of<ShoppingCart>(context, listen: false).removeItemFromCart;
    final cartItems = Provider.of<ShoppingCart>(context).items;

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
              IconButton(
                  onPressed: isItemInCart
                      ? () => removeItemFromCart(product.id)
                      : () => additemToCart(product.id),
                  icon: Icon(isItemInCart
                      ? Icons.add_shopping_cart
                      : Icons.remove_shopping_cart))
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
