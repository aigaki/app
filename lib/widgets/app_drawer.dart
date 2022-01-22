import 'package:flutter/material.dart';
import 'package:ss_mann/screens/cart_screen.dart';
import 'package:ss_mann/screens/home_screen.dart';
import 'package:ss_mann/screens/inspirations_screen.dart';
import 'package:ss_mann/screens/products_screen.dart';

class AppDrawer extends StatelessWidget {
  static String bgImgUrl =
      'https://media.istockphoto.com/illustrations/seamless-art-background-watercolor-blue-green-color-water-textu-illustration-id177871835?k=20&m=177871835&s=612x612&w=0&h=jTlDM9bdI32rZatIQXsQDc9sHHSNBHC2XDlLRJ3CEVA=';
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
          DrawerHeader(
            child: const Text(
              'ssMann',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Colors.white,
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(bgImgUrl),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () => goTo(context, HomeScreen.routeName),
          ),
          ListTile(
            leading: const Icon(Icons.shopping_bag),
            title: const Text('Products'),
            onTap: () => goTo(context, ProductsScreen.routeName),
          ),
          ListTile(
            leading: const Icon(Icons.read_more),
            title: const Text('Inspirations'),
            onTap: () => goTo(context, InspirationsScreen.routeName),
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart),
            title: const Text('Shopping Cart'),
            onTap: () => goTo(context, CartScreen.routeName),
          ),
        ],
      ),
    );
  }
}
