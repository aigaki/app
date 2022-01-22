import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ss_mann/provider/product_catalog.dart';
import 'package:ss_mann/provider/shopping_cart.dart';
import 'package:ss_mann/screens/cart_screen.dart';
import 'package:ss_mann/screens/home_screen.dart';
import 'package:ss_mann/screens/inspirations_screen.dart';
import 'package:ss_mann/screens/products_screen.dart';

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
        '/': (_) => const HomeScreen(),
        ProductsScreen.routeName: (_) => const ProductsScreen(),
        CartScreen.routeName: (_) => const CartScreen(),
        InspirationsScreen.routeName: (_) => const InspirationsScreen(),
      },
    );
  }
}
