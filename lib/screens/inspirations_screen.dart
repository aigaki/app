import 'package:flutter/material.dart';
import 'package:ss_mann/widgets/screens_navigation.dart';

class InspirationsScreen extends StatelessWidget {
  static String routeName = '/inspirations';
  const InspirationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inspirations'),
      ),
      body: Container(child: ScreenNavigation()),
    );
  }
}
