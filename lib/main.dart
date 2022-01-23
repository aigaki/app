import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aigaki_app/provider/product_catalog.dart';
import 'package:aigaki_app/provider/shopping_cart.dart';
import 'package:aigaki_app/screens/cart_screen.dart';
import 'package:aigaki_app/screens/home_screen.dart';
import 'package:aigaki_app/screens/inspirations_screen.dart';
import 'package:aigaki_app/screens/product_screen.dart';
import 'package:aigaki_app/screens/products_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductCatalog()),
        ChangeNotifierProvider(create: (_) => ShoppingCart()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        HomeScreen.routeName: (_) => const HomeScreen(),
        ProductsScreen.routeName: (_) => const ProductsScreen(),
        CartScreen.routeName: (_) => const CartScreen(),
        InspirationsScreen.routeName: (_) => const InspirationsScreen(),
        ProductScreen.routeName: (_) => const ProductScreen(),
      },
    );
  }
}
