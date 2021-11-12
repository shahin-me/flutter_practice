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
  List<int> list = [];

  @override
  void initState() {
    for(int i = 0; i <= 50; i++) {
      list.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (BuildContext cnx, int index) {
        return ListTile(
          title: Text("Item no ${list[index]}"),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.pink),
          ),
          trailing: Icon(Icons.arrow_forward),
        );
      }
    );
  }
}
