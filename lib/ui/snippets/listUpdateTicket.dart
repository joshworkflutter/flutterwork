import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_sedayutalk/repository/updateTickets.dart';

class ListUpdateTickets extends StatefulWidget {
  ListUpdateTickets({Key key}) : super(key: key);

  @override
  _ListUpdateTicketsState createState() => _ListUpdateTicketsState();
}

class _ListUpdateTicketsState extends State<ListUpdateTickets> {
  // List<String> litems = ["1", "2", "Third", "4"];

  // @override
  // Widget build(BuildContext context) {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 174.0,

          // color: Colors.blue,
          child: ListView.builder(
              // scrollDirection: Axis.vertical,
              itemCount: upTickets.length,
              itemBuilder: (BuildContext context, int index) {
                UpdateTickets upTicket = upTickets[index];
                return Container(
                    height: 70.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                          width: 0.1,
                        )),
                    margin: EdgeInsets.all(0.0),
                    // width: 240.0,
                    // color: Colors.red,
                    child: Stack(
                        alignment: Alignment.topCenter,
                        children: <Widget>[
                          Positioned(
                            // bottom: 15.0,
                            child: Container(
                              // height: 340.0,
                              // width: 300.0,
                              // decoration: BoxDecoration(
                              //   color: Colors.white,
                              //   borderRadius: BorderRadius.circular(10.0),
                              // ),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: 10.0, top: 10.0),
                                              height: 25.0,
                                              width: 25.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xffCFBFF7),
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                                // border: Border.all(
                                                //     // width: 0.5,
                                                //     color: Colors.deepPurple)
                                              ),
                                              child: Icon(
                                                FontAwesomeIcons.user,
                                                color: Colors.deepPurple,
                                                size: 15.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          // mainAxisAlignment:
                                          //     MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                left: 10.0,
                                                top: 10.0,
                                              ),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width -
                                                  70,
                                              child: Text(
                                                upTicket.information,
                                                style: TextStyle(
                                                  fontSize: 15.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: 'Quicksand',
                                                  letterSpacing: 1.2,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 20.0),
                                        Container(
                                          padding: EdgeInsets.only(left: 50.0),
                                          child: Text(upTicket.updateDate,
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 10.0)),
                                        ),
                                      ],
                                    ),
                                  ]),
                            ),
                          ),
                        ]));
              }),
        ),
      ],
    );
  }
}
