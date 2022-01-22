import 'package:flutter/material.dart';
import 'package:ss_mann/widgets/app_drawer.dart';

class InspirationsScreen extends StatelessWidget {
  static String routeName = '/inspirations';
  const InspirationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inspirations'),
      ),
      body: const Text('todo'),
      drawer: const AppDrawer(),
    );
  }
}
