import 'package:flutter/material.dart';
import 'package:merhabafire/screens/home.dart';
import 'package:merhabafire/screens/login.dart';

void main() => runApp(MerhabaFire());

class MerhabaFire extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme:  ThemeData(
        primaryColor: Colors.orange,
      ),
      home: Home(),
      );
  }
}
