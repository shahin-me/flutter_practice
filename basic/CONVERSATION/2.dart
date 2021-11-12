import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
//import 'package:p7app/table/professionals_conversation/view/widget/date_filter_widget.dart';

class ProfessionalsConversationScreen extends StatefulWidget {

  @override
  _ProfessionalsConversationScreenState createState() => _ProfessionalsConversationScreenState();
}

class _ProfessionalsConversationScreenState extends State<ProfessionalsConversationScreen> {

  TextEditingController searchController = TextEditingController();
  DateTime selectedDate = DateTime.now();
  TextEditingController _dateController = TextEditingController();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(2019),
        lastDate: DateTime(2050));
    if (picked != null)
      setState(() {
        selectedDate = picked;
        _dateController.text = DateFormat("dd-MM-yyyy").format(selectedDate);
      });
  }

  @override
  Widget build(BuildContext context) {

    //var width = MediaQuery.of(context).size.width;
    final size = MediaQuery.of(context).size;
    //var linkTextColor = '#2F8099';

    var top = Container(
      color: Colors.white,
      height: 55,
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Text(
          'Select Conversation with Professional to view',
          style: TextStyle(fontSize: 19),
        ),
      ),
    );

    var searchSection = Container(
      height: 50,
      width: size.width * 0.82,
      color: Colors.grey[200],
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Icon(Icons.search),
          ),
          SizedBox(
            width: size.width / 350,
          ),
          Container(
            color: Colors.white,
            height: 33,
            width: 300,
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow, width: 1.5)
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.close, color: Colors.black, size: 20,),
                  onPressed: () => searchController.clear(),
                )
              ),
            ),
          ),
          SizedBox(
            width: size.width / 330,
          ),
          ElevatedButton(
            onPressed: (){},
            child: Text('Search'),
            style: ElevatedButton.styleFrom(
              primary: Colors.yellow,
              onPrimary: Colors.black,
              elevation: 3.0,
            ),
          )
        ],
      ),
    );

    var dateBarSection = Container(
      color: Colors.white,
      height: 40,
      width: size.width*0.82,
      child: Row(
        children: [
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text('<2021', style: TextStyle(color: HexColor('#989DA7')),
              ),
            ),
          ),
          SizedBox(width: 10),
          GestureDetector(
            child: Text('May 9', style: TextStyle(color: Colors.blue),
            ),
          ),
          SizedBox(width: 10),
          GestureDetector(
            child: Text('May 11', style: TextStyle(color: Colors.blue),
            ),
          ),
          SizedBox(width: 10),
          GestureDetector(
            child: Text('May 16', style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
    );

    var dataList =   Container(
      width: size.width*0.82,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: size.width*0.20,
            child: Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Rakibul Alam thuduyyuuygjjj(rakibulalam109@gmail.com)',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ),
          //SizedBox(width: size.width*0.006),
          Container(
              width: size.width*0.065,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text('al.mamunvmvjku'),
              )),
          //SizedBox(width: 6),
          //SizedBox(width: size.width*0.006),
          Container(
            width: size.width*0.375,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text('Google Calendar Invitation linkygujgjjkhjkjh: trsttSabrina Khan Saama Sunday, Google Calendar Invitation link: SabrinaKhan Saama Sunday,'
                  'Google Meet joining info Video call link: https://meet.google.com/pwy-tunt-cky '),
            ),
          ),
          //SizedBox(width: size.width*0.006),
          //SizedBox(width: 6),
          Container(
              width: size.width*0.09,
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text('10/10/2021 at 12:07 Pm'),
              )),
          //SizedBox(width: size.width*0.006),
          //SizedBox(width: 6),
          Container(
              width: size.width*0.09,
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text('10/10/2021 at 12:07 Pm'),
              )),
        ],
      ),
    );

    var filterSection = Container(
      height: 330,
      width: size.width*0.12,
      color: Colors.grey[200],
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 30,
            width: size.width*0.12,
            decoration: BoxDecoration(
                color: Colors.yellow
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 6.0),
              child: Text(
                'Filter',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text('By created at'),
          ),
          //SizedBox(height: 10),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Container(
                  height: 30,
                  width: 110,
                  child: TextFormField(
                    readOnly : true,
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
              ),
              SizedBox(width: 5),
              IconButton(
                icon: Icon(Icons.calendar_today_rounded, color: Colors.blue),
                //iconSize:,
                onPressed: (){
                  _selectDate(context);
                },
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Container(
                  height: 30,
                  width: 110,
                  child: TextFormField(
                    readOnly : true,
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
              ),
              SizedBox(width: 5,),
              IconButton(
                icon: Icon(Icons.calendar_today_rounded, color: Colors.blue),
                onPressed: (){
                  _selectDate(context);
                },
              )
            ],
          ),
          SizedBox(height: 3),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: ElevatedButton(
                    child: Text('Search'),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.yellow,
                        onPrimary: Colors.black
                    ),
                    onPressed: (){}
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: ElevatedButton(
                    child: Text('Reset'),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.yellow,
                        onPrimary: Colors.black
                    ),
                    onPressed: (){}
                ),
              )
            ],
          ),
          Divider(
            color: Colors.black,
            thickness: 1,
            height: 20,
          ),

          //SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text('By date'),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Container(
                  height: 30,
                  width: 110,
                  child: TextFormField(
                    readOnly : true,
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
              ),
              SizedBox(width: 5,),
              IconButton(
                icon: Icon(Icons.calendar_today_rounded, color: Colors.blue),
                //iconSize:,
                onPressed: (){
                  _selectDate(context);
                },
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Container(
                  height: 30,
                  width: 110,
                  child: TextFormField(
                    readOnly : true,
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
              ),
              SizedBox(width: 5,),
              IconButton(
                icon: Icon(Icons.calendar_today_rounded, color: Colors.blue),
                onPressed: (){
                  _selectDate(context);
                },
              )
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: ElevatedButton(
                    child: Text('Search'),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.yellow,
                        onPrimary: Colors.black
                    ),
                    onPressed: (){}
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: ElevatedButton(
                    child: Text('Reset'),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.yellow,
                        onPrimary: Colors.black
                    ),
                    onPressed: (){}
                ),
              )
            ],
          ),
        ],
      ),
    );


    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: size.width*0.02, right: size.width*0.02),
        child: Container(
          child: Column(
            children: [
              top,
              // searchSection,
              // dateBarSection,

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      searchSection,
                      dateBarSection,
                      Container(
                        height: 40,
                        width: size.width*0.82,
                        color: Colors.grey[200],
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                width: size.width*0.20,
                                  child: Text('PROFESSIONAL')),
                            ),
                            Container(
                                width: size.width*0.06,
                                child: Text('USER')),
                            Container(
                                width: size.width*0.356,
                                child: Text('DESCRIPTION')),
                            Container(
                                width: size.width*0.09,
                                child: Text('CREATED AT')),
                            Container(
                                width: size.width*0.09,
                                child: Text('DATE')),
                          ],
                        ),
                      ),

                      SizedBox(height: 8),
                      dataList,
                      Container(
                        width: size.width*0.82,
                        child: Divider(
                          height: 18,
                          //thickness: 1,
                          color: Colors.yellow,
                        ),
                      ),

                      Container(
                        width: size.width*0.82,
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: size.width*0.20,
                              child: Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'Rakibul Alam (rakibulalam109@gmail.com)',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                            ),
                            //SizedBox(width: size.width*0.006),
                            Container(
                                width: size.width*0.06,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text('al.mamun'),
                                )),
                            //SizedBox(width: 6),
                            //SizedBox(width: size.width*0.006),
                            Container(
                              width: size.width*0.356,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Text('Google Calendar Invitation linkygujgjjkhjkjh: Sabrina Khan Saama Sunday, Google Calendar Invitation link: SabrinaKhan Saama Sunday,'
                                    'Google Meet joining info Video call link: https://meet.google.com/pwy-tunt-cky '),
                              ),
                            ),
                            //SizedBox(width: size.width*0.006),
                            //SizedBox(width: 6),
                            Container(
                                width: size.width*0.09,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text('10/10/2021 at 12:07 Pm'),
                                )),
                            //SizedBox(width: size.width*0.006),
                            //SizedBox(width: 6),
                            Container(
                                width: size.width*0.09,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text('10/10/2021 at 12:07 Pm'),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(width: size.width*0.02),
                    filterSection,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

