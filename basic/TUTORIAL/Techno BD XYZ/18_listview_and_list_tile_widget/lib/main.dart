import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'First App',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Light widget"),
        ),
        body: MyApp(),
      ),
    )
  );
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("Item 1"),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.pink),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text("Item 2"),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.pink),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          title: Text("Item 3"),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.pink),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
      ],
    );
  }
}
