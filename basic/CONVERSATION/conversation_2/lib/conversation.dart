import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:date_format/date_format.dart';


class Conversation extends StatefulWidget {

  @override
  _ConversationState createState() => _ConversationState();
}

class _ConversationState extends State<Conversation> {

  String? _hour, _minute, _time;

  late String dateTimes;

  DateTime selectedDate = DateTime.now();

  TimeOfDay selectedTime = TimeOfDay(hour: 00, minute: 00);

  TextEditingController _dateController = TextEditingController();
  TextEditingController _timeController = TextEditingController();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(2019),
        lastDate: DateTime(2050));
    if (picked != null)
      setState(() {
        selectedDate = picked;
        _dateController.text = DateFormat("dd/MM/yyyy").format(selectedDate);
      });
  }

  Future<Null> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null)
      setState(() {
        selectedTime = picked;
        _hour = selectedTime.hour.toString();
        _minute = selectedTime.minute.toString();
        _time = _hour! + ' : ' + _minute!;
        _timeController.text = _time!;
        _timeController.text = formatDate(
            DateTime(2019, 08, 1, selectedTime.hour, selectedTime.minute),
            [hh, ':', nn, ":" "", " ",am]).toString();
      });
  }

  final conversationInsert = TextEditingController();
  //List<String> conversations = [];
  //get text => conversationInsert.text;
  List<String>dateTime = [];

  List <ConversationData> conversationData = [];


  @override
  Widget build(BuildContext context) {
    var conversationField =     Container(
      height: 120,
      // width: Responsive.isDesktop(context) ||
      //     Responsive.isTablet(context)
      //     ? MediaQuery.of(context).size.width * 0.4
      //     : MediaQuery.of(context).size.width,
      width: MediaQuery.of(context).size.width * 0.3,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          //color: Colors.pink
          color: Color.fromRGBO(220, 220, 220, 1)
      ),
      padding: EdgeInsets.all(16),
      child: TextFormField(
        maxLines: 10,
        controller: conversationInsert,
        decoration: InputDecoration(
          hintText: "Enter a conversation...",
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
    );

    var dateSection = Row(
      children: [
        Text(
          'Date:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 5,),
        Container(
          height: 45,
          width: 100,
          child: TextFormField(
            //readOnly : true,
            controller: _dateController,
            decoration: InputDecoration(
              //hintText: "name",
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width:2.0)
                )
            ),
            style: TextStyle(
                fontSize: 14,
                color: Colors.black
            ),
          ),
        ),
        SizedBox(width: 5),
        GestureDetector(
          child: Text('Today', style: TextStyle(color: Colors.blue),),
          onTap: (){
            setState(() {
              selectedDate = DateTime.now();
              _dateController.text = DateFormat("dd/MM/yyyy").format(selectedDate);
              //print(  _dateController.text );
            });
          },
        ),
        Text(' |'),
        IconButton(
          icon: Icon(Icons.calendar_today_rounded, color: Colors.blue,),
          //iconSize:,
          onPressed: (){
            _selectDate(context);
          },
        )
      ],
    );

    var timeSection = Row(
      children: [
        Text(
          'Time:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 5,),
        Container(
          height: 45,
          width: 105,
          child: TextFormField(
            controller: _timeController,
            decoration: InputDecoration(
              //hintText: "name",
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width:2.0)
                )
            ),
            style: TextStyle(
                fontSize: 14,
                color: Colors.black
            ),
          ),
        ),
        SizedBox(width: 5,),
        GestureDetector(
          child: Text('Now', style: TextStyle(color: Colors.blue),),
          onTap: (){
            // selectedTime = TimeOfDay.now();
            // String hour = selectedTime.hour.toString();
            // String minute = selectedTime.minute.toString();
            // if (selectedTime.minute <= 9) {
            //   minute = "0$minute";
            // }
            // _timeController.text = "$hour:$minute:00";

            _timeController.text = DateFormat("hh:mm a").format(DateTime.now());
          },
        ),
        Text(' |'),
        SizedBox(width: 0,),
        IconButton(
          icon: Icon(Icons.watch_later_outlined, color: Colors.blue,),
          //iconSize:,
          onPressed: (){
            _selectTime(context);
          },
        )
      ],
    );

    var conversationList = ListView.builder(
        reverse: false,
        itemCount: conversationData.length,
        itemBuilder: (BuildContext context, index){

          return Padding(
            padding: const EdgeInsets.only(left: 15, right: 25, bottom: 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text('shahin'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Text('Conversation time: ${conversationData[index]?.date?? ""} At ${conversationData[index]?.time?? ""}'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Text('Created at: ${conversationData[index]?.createdDate?? ""}'),
                    ),
                  ],
                ),

                Card(
                  elevation: 1,
                  child: ListTile(
                    //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    selected: true,
                    selectedTileColor: Colors.grey[300],
                    title: SelectableText(
                      conversationData[index]?.chat?? "",
                      style: TextStyle(fontWeight: FontWeight.w300, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          );
        });

    var saveButton =  ElevatedButton(
      child: Text('Save'),
      style: ElevatedButton.styleFrom(
        primary: Colors.yellow,
        onPrimary: Colors.black,
        elevation: 3.0,
      ),
      onPressed: (){
        if(conversationInsert.text.isEmpty){
          print('empty conversation');
        }
        else {
          setState(() {
            conversationData.add(ConversationData(
              chat: conversationInsert.text,
              createdDate: DateFormat("dd/MM/yyyy At hh:mm:ss a").format(DateTime.now()),
              date: _dateController.text,
              time: _timeController.text,

            ));
            _dateController.clear();
            _timeController.clear();
            // conversations.insert(0, conversationInsert.text);
            // dateTime.insert(0, DateFormat("yyyy-MM-dd At kk:mm").format(DateTime.now()));
          });
          conversationInsert.clear();
        }
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
    );


    return Scaffold(

        body: Container(
          child: Column(
              children: [
                Flexible(
                    child: conversationList
                ),

                Divider(
                  height: 25,
                  color: Colors.yellow,
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 30, left: 30, right: 0),
                  child: Container(
                    //width: MediaQuery.of(context).size.width * 0.7,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        conversationField,
                        SizedBox(width: 10,),

                        Column(
                          children: [
                            dateSection,
                            SizedBox(height: 5,),
                            timeSection,
                          ],
                        ),

                        SizedBox(width: 30,),
                        saveButton,
                      ],
                    ),
                  ),
                ),
              ]
          ),
        )
    );
  }
}

class ConversationData {
  String? chat;
  String? createdDate;
  String? date;
  String? time;

  ConversationData({this.chat, this.createdDate, this.date, this.time});
}