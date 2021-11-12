import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
               Padding(
                 padding: const EdgeInsets.only(top: 50),
                 child: Container(
                  height: 100,
                  width: 300,
                  color: Colors.grey[300],
                 ),
               ),
            SizedBox(height: 10,),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50), // if you need this
                side: BorderSide(
                  color: Colors.grey.withOpacity(0.2),
                  width: 1,
                ),
              ),
              child: Container(
                color: Colors.white,
                width: 150,
                height: 50,
              ),
            ),
            SizedBox(height: 10,),
            Card(
                margin: EdgeInsets.zero,
                //elevation: 20,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  width: 300,
                  height: 100,
                  child: Center(child: Text('YoYo', style: TextStyle(fontSize: 50))),
                )
            ),
            Card(
                margin: EdgeInsets.zero,
                //elevation: 20,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  width: 300,
                  height: 100,
                  child: Center(child: Text('YoYo', style: TextStyle(fontSize: 50))),
                )
            ),
            // To do
            Padding(
              padding: const EdgeInsets.only(left: 0, right: 0),
              child: Card(
                  margin: EdgeInsets.zero,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.13,
                    width: MediaQuery.of(context).size.width * 0.90,
                   child: Row(
                     children: [
                       SizedBox(
                         height: MediaQuery.of(context).size.height * 0.13,
                         width: MediaQuery.of(context).size.width * 0.55,
                         child: Container(color: Colors.blue,),
                       ),
                       SizedBox(
                         height: MediaQuery.of(context).size.height * 0.13,
                         width: MediaQuery.of(context).size.width * 0.35,
                         child: Container(color: Colors.red,),
                       ),
                     ],
                   ),
                   // child: Center(child: Text('YoYo', style: TextStyle(fontSize: 50))),
                  )
              ),
            ),
            Card(
              color: Colors.grey[900],
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.white70, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.all(20.0),
              child: Container(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        'example',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Text(
                'This is a Container',
                textScaleFactor: 2,
                style: TextStyle(color: Colors.black),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.green, spreadRadius: 3),
                ],
              ),
              height: 50,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40), // if you need this
                side: BorderSide(
                  color: Colors.grey.withOpacity(0.2),
                  width: 1,
                ),
              ),
              child: Container(
                color: Colors.white,
                width: 200,
                height: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}





