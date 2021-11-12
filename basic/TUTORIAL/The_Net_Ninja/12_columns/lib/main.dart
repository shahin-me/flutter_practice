import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home()
));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my first app'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.pinkAccent,
            child: Text('one'),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.cyan,
            child: Text('two'),
          ),
          Container(
            padding: EdgeInsets.all(40.0),
            color: Colors.amber,
            child: Text('three'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('click'),
        onPressed: (){},
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
