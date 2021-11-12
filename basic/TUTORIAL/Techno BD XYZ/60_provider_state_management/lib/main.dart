import 'package:flutter/material.dart';
import 'package:pratice/eligiblity_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EligibilityScreen(),
    );
  }
}
