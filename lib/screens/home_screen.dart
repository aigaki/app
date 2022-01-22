import 'package:flutter/material.dart';
import 'package:ss_mann/widgets/screens_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('buy stuff from us plz'),
      ),
      body: ScreenNavigation(),
    );
  }
}
