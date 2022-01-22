import 'package:flutter/material.dart';
import 'package:ss_mann/screens/home_screen.dart';
import 'package:ss_mann/screens/inspirations_screen.dart';
import 'package:ss_mann/screens/products_screen.dart';

void main() {
  runApp(const MyApp());
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
        '/': (context) => const HomeScreen(),
        ProductsScreen.routeName: (context) => const ProductsScreen(),
        InspirationsScreen.routeName: (context) => const InspirationsScreen(),
      },
    );
  }
}
