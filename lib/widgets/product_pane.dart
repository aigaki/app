import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ss_mann/model/product.dart';
import 'package:ss_mann/provider/product_provider.dart';

class ProductPane extends StatelessWidget {
  final Product product;
  final Function(int)? onClick;
  const ProductPane({Key? key, required this.product, this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final removeProductById =
        Provider.of<ProductProvider>(context, listen: false).removeProductById;
    return GestureDetector(
      onTap: () => removeProductById(product.id),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Flex(
            direction: Axis.vertical,
            children: [
              Image.network(
                product.imgUrl,
                height: 70,
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  product.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
