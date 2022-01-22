import 'package:flutter/material.dart';
import 'package:ss_mann/widgets/app_drawer.dart';

class CartScreen extends StatelessWidget {
  static String routeName = '/cart';
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart Screen'),
      ),
      body: const Text('todo'),
      drawer: const AppDrawer(),
    );
  }
}
