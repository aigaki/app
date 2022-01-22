import 'package:flutter/material.dart';
import 'package:ss_mann/model/product.dart';

class ProductPane extends StatelessWidget {
  final Product product;
  const ProductPane({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
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
    );
  }
}
