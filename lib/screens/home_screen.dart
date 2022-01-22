import 'package:flutter/material.dart';
import 'package:ss_mann/widgets/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ssMann'),
      ),
      body: const Text('Todo'),
      drawer: const AppDrawer(),
    );
  }
}
