import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
// import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_sedayutalk/ui/admiin/agents.dart';
import 'package:mobile_sedayutalk/ui/snippets/chartAdmin.dart';
import 'package:mobile_sedayutalk/ui/snippets/listUpdateTicket.dart';
import 'package:mobile_sedayutalk/ui/snippets/overview.dart';

class Report extends StatefulWidget {
  Report({Key key}) : super(key: key);

  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  int _currentTab = 0;
  int toggleIndex = 0;
  var _selectedIndex = 0;

  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking,
  ];

  List<String> litems = ["1", "2", "Third", "4"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomPadding: false,
      body: Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          // margin: EdgeInsets.only(top: 8),

          child: ListView(
            children: <Widget>[
              // SizedBox(height: 0),
              Container(
                  child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text('Report',
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Robuto-Regular',
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[700],
                              letterSpacing: 0.05,
                            )
                            // textWidthBasis: ,
                            ),
                      ),
                      Text('Welcome, Admin CS AJB!',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w300,
                            letterSpacing: 2.0,
                          ))
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(right: 14.0),
                          child: Icon(
                            FontAwesomeIcons.bell,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      Container(
                        // margin: EdgeInsets.only(top: 15),
                        child: CircleAvatar(
                          radius: 26.0,
                          backgroundImage: NetworkImage(
                              'https://media-exp1.licdn.com/dms/image/C5103AQHKk07p5oROsw/profile-displayphoto-shrink_800_800/0?e=1604534400&v=beta&t=g6q3wdUstQg3aX4tgNAt1LUF1M0jXFIoTx_a4-L_ZcM'),
                        ),
                      )
                    ],
                  ),
                ],
              )),
              Container(
                // height: 48.0,
                child: Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          // children: [
                          //   Container(
                          //     padding: EdgeInsets.only(right: 8.0),
                          //     child: Text('Overview',
                          //         style: TextStyle(
                          //           fontFamily: 'Quicksand',
                          //           fontSize: 14,
                          //           fontWeight: FontWeight.w900,
                          //           color: Colors.grey[900],
                          //         )),
                          //   ),
                          //   Text('Agents',
                          //       style: TextStyle(
                          //           fontFamily: 'Quicksand',
                          //           fontSize: 14,
                          //           fontWeight: FontWeight.w900,
                          //           color: Colors.grey[900]))
                          // ],
                          FlutterToggleTab(
                            height: 16.0,
                            width: 35,
                            borderRadius: 10,
                            initialIndex: 0,

                            // selectedIndex: _selectedIndex,
                            unSelectedBackgroundColors: [Colors.white],
                            selectedBackgroundColors: [Colors.deepPurple],
                            selectedTextStyle: TextStyle(
                                fontFamily: 'Quicksand',
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                            unSelectedTextStyle: TextStyle(
                                fontFamily: 'Quicksand',
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            labels: ["Overview", "Agents"],
                            // icons: [Icons.person, Icons.pregnant_woman],
                            selectedLabelIndex: (index) {
                              print("Selected Index $index");
                              setState(() {
                                toggleIndex = index;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  child: Column(
                children: <Widget>[
                  toggleIndex == 0 ? overviewS(context) : Agents(),
                ],
              ))
            ],
          )),
      bottomNavigationBar: SizedBox(
        height: 50.0,
        child: Container(
          decoration: BoxDecoration(border: Border.all(width: 1.0)),
          child: BottomNavigationBar(
            currentIndex: _currentTab,
            onTap: (int value) {
              setState(() {
                _currentTab = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.pie_chart,
                  color: Colors.deepPurple,
                  size: 20.0,
                ),
                title: SizedBox.shrink(),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.access_alarm_sharp,
                  size: 20.0,
                ),
                title: SizedBox.shrink(),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.local_pizza,
                  size: 20.0,
                ),
                title: SizedBox.shrink(),
              ),
              BottomNavigationBarItem(
                icon: CircleAvatar(
                  radius: 15.0,
                  backgroundImage: NetworkImage(
                      'https://media-exp1.licdn.com/dms/image/C5103AQHKk07p5oROsw/profile-displayphoto-shrink_800_800/0?e=1604534400&v=beta&t=g6q3wdUstQg3aX4tgNAt1LUF1M0jXFIoTx_a4-L_ZcM'),
                ),
                title: SizedBox.shrink(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
