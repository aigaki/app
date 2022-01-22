import 'package:flutter/material.dart';
import 'package:ss_mann/screens/inspirations_screen.dart';
import 'package:ss_mann/screens/products_screen.dart';

class ScreenNavigation extends StatelessWidget {
  const ScreenNavigation({Key? key}) : super(key: key);

  void goToProducts(context) {
    Navigator.of(context).pushNamed(ProductsScreen.routeName);
  }

  void goToInspirations(context) {
    Navigator.of(context).pushNamed(InspirationsScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      children: [
        ElevatedButton(
          child: Text('Go to products'),
          onPressed: () => goToProducts(context),
        ),
        ElevatedButton(
          child: Text('Go to inspirations'),
          onPressed: () => goToInspirations(context),
        ),
      ],
    ));
  }
}
