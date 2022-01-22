import 'package:flutter/material.dart';
import 'package:ss_mann/screens/cart_screen.dart';
import 'package:ss_mann/screens/inspirations_screen.dart';
import 'package:ss_mann/screens/products_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  void goTo(BuildContext context, String routeName) {
    Navigator.of(context).pushReplacementNamed(routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Products'),
            onTap: () => goTo(context, ProductsScreen.routeName),
          ),
          ListTile(
            title: const Text('Inspirations'),
            onTap: () => goTo(context, InspirationsScreen.routeName),
          ),
          ListTile(
            title: const Text('Shopping Cart'),
            onTap: () => goTo(context, CartScreen.routeName),
          ),
        ],
      ),
    );
  }
}
