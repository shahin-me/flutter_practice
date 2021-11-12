import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.pink,
    accentColor: Colors.cyan,
  ),
  home: MyApp(),
));

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? studentName, studentID, studyProgramID;
  double? studentCGPA;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Database"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Name",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue,
                    width: 2.0
                    ),
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Student ID",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue,
                          width: 2.0
                      ),
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Study Program ID",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue,
                          width: 2.0
                      ),
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "CGPA",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue,
                          width: 2.0,
                      ),
                    )
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child:Text('Create') ,
                    onPressed: (){
                    },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    )
                  ),
                ),
                ElevatedButton(
                  child:Text('Read') ,
                  onPressed: (){
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      )
                  ),
                ),
                ElevatedButton(
                  child:Text('Update') ,
                  onPressed: (){
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      )
                  ),
                ),
                ElevatedButton(
                  child:Text('Delete') ,
                  onPressed: (){
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      )
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
