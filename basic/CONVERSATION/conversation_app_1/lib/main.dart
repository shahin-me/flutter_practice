//import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final conversationInsert = TextEditingController();
  List<String> conversations = [];

  //get text => conversationInsert.text;

  List<String>dateTime = [];


  void sendMsg(msg) {
    String text = msg;
    print(text);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Conversation Demo')
        ),

        body: Container(
          child: Column(
            children: [
              //Text('$text'),

              Flexible(
                  child: ListView.builder(
                      reverse: false,
                      itemCount: conversations.length,
                      itemBuilder: (BuildContext context, index){

                        // return Container(
                        //   child: Row(
                        //     children: [
                        //       Bubble(
                        //         radius: Radius.circular(15),
                        //         color: Colors.grey[300],
                        //
                        //         child: Padding(
                        //           padding: const EdgeInsets.all(8.0),
                        //           child: Row(
                        //             children: [
                        //
                        //               SizedBox(width: 10.0,),
                        //
                        //               Flexible(
                        //                 child: Container(
                        //                   constraints: BoxConstraints( maxWidth: 200),
                        //                   child: Text(
                        //                     '$text'
                        //                   ),
                        //                 ),
                        //               )
                        //             ],
                        //           ),
                        //         ),
                        //       )
                        //     ],
                        //   ),
                        // );

                        return Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('shahin'),
                                Text('${dateTime[index]}'),
                              ],
                            ),
                            Card(
                              child: ListTile(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                                selected: true,
                                selectedTileColor: Colors.grey[300],
                                title: Text('${conversations[index]}'),
                              ),
                            ),
                          ],
                        );
                      }),
              ),

              Divider(
                height: 5,
                color: Colors.yellow,
              ),
              Container(
                child: ListTile(
                  title: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      //color: Colors.pink
                      color: Color.fromRGBO(220, 220, 220, 1)
                    ),
                    padding: EdgeInsets.only(left: 15),
                    child: TextFormField(
                      controller: conversationInsert,
                      decoration: InputDecoration(
                        hintText: "Enter a conversation..",
                        hintStyle: TextStyle(
                          color: Colors.black26
                        ),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black
                      ),
                    ),
                  ),
                  trailing: ElevatedButton(
                    child: Text('Save'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[300],
                      onPrimary: Colors.black
                    ),
                    onPressed: (){
                      if(conversationInsert.text.isEmpty){
                        print('empty conversation');
                      }
                      else {
                        setState(() {
                          conversations.insert(0, conversationInsert.text);
                          dateTime.insert(0, DateFormat("yyyy-MM-dd At kk:mm").format(DateTime.now()));
                        });
                        sendMsg(conversationInsert.text);
                        conversationInsert.clear();
                      }
                      FocusScopeNode currentFocus = FocusScope.of(context);
                      if (!currentFocus.hasPrimaryFocus) {
                        currentFocus.unfocus();
                      }
                    },
                  ),

                  // trailing: IconButton(
                  //   icon: Icon(
                  //     Icons.send,
                  //     size: 30,
                  //   ),
                  //   onPressed: (){
                  //     if(conversationInsert.text.isEmpty){
                  //       print('empty conversation');
                  //     }
                  //     else {
                  //       setState(() {
                  //         conversations.insert(0, conversationInsert.text);
                  //       });
                  //       sendMsg(conversationInsert.text);
                  //       //conversationInsert.clear();
                  //     }
                  //     FocusScopeNode currentFocus = FocusScope.of(context);
                  //     if (!currentFocus.hasPrimaryFocus) {
                  //       currentFocus.unfocus();
                  //     }
                  //   },
                  // ),
                ),
              ),
              //Text(conversationInsert.text)
            ],
          ),
        ),
      )
    );
  }
}
