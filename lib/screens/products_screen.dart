import 'package:flutter/material.dart';
import 'package:ss_mann/widgets/screens_navigation.dart';

class ProductsScreen extends StatelessWidget {
  static String routeName = '/products';
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: Container(child: ScreenNavigation()),
    );
  }
}
