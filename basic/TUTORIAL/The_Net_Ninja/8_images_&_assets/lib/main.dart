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
      body: Center(
        child: Image.asset('assets/space-1.jpeg'),
        // child: Image(
        //   image: AssetImage('assets/space-1.jpeg'),
        //   //image: NetworkImage('https://images.unsplash.com/photo-1543722530-d2c3201371e7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1474&q=80'),
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('click'),
        onPressed: (){},
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
