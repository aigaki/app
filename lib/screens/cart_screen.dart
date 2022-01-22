import 'package:flutter/material.dart';
import 'package:ss_mann/widgets/app_drawer.dart';

class CartScreen extends StatelessWidget {
  static String routeName = '/cart';
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Screen'),
      ),
      body: Text('todo'),
      drawer: const AppDrawer(),
    );
  }
}
