import 'package:flutter/material.dart';
import 'package:ss_mann/model/product.dart';

class ProductPane extends StatelessWidget {
  Product product;
  ProductPane({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(product.name),
    );
  }
}
