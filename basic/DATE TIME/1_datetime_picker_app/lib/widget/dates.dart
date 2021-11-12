
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dates extends StatefulWidget {

  String? dates;
  Dates({this.dates});

  @override
  _DatesState createState() => _DatesState();
}

class _DatesState extends State<Dates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(widget.dates.toString())),
    );
  }
}
