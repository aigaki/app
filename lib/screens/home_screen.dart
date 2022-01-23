import 'package:flutter/material.dart';
import 'package:aigaki_app/fetch/fetch_products.dart';
import 'package:aigaki_app/widgets/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/';
  const HomeScreen({Key? key}) : super(key: key);

  Future<void> getProducts() async {
    final products = await fetchProducts();
    products.forEach((element) {
      print(element.imgUrl);
    });
  }

  @override
  Widget build(BuildContext context) {
    getProducts();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aigaki'),
      ),
      body: const Text('Todo'),
      drawer: const AppDrawer(),
    );
  }
}
