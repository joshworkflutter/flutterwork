import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_sedayutalk/repository/agentStatus.dart';

class Agents extends StatefulWidget {
  Agents({Key key}) : super(key: key);

  @override
  _AgentsState createState() => _AgentsState();
}

class _AgentsState extends State<Agents> {
  final List<AgentStatus> agentTickets = [
    AgentStatus(
        name: 'Apriliani Parissa',
        profilePicture:
            'https://media-exp1.licdn.com/dms/image/C5103AQHKk07p5oROsw/profile-displayphoto-shrink_800_800/0?e=1604534400&v=beta&t=g6q3wdUstQg3aX4tgNAt1LUF1M0jXFIoTx_a4-L_ZcM',
        numOpenTicket: '4',
        numHoldTicket: '4',
        timeTicket: '45 min'),
    AgentStatus(
        name: 'Nikomodeus',
        profilePicture:
            'https://media-exp1.licdn.com/dms/image/C5103AQHKk07p5oROsw/profile-displayphoto-shrink_800_800/0?e=1604534400&v=beta&t=g6q3wdUstQg3aX4tgNAt1LUF1M0jXFIoTx_a4-L_ZcM',
        numOpenTicket: '4',
        numHoldTicket: '4',
        timeTicket: '12 min'),
    AgentStatus(
        name: 'Felizia Tanzil',
        profilePicture:
            'https://media-exp1.licdn.com/dms/image/C5103AQHKk07p5oROsw/profile-displayphoto-shrink_800_800/0?e=1604534400&v=beta&t=g6q3wdUstQg3aX4tgNAt1LUF1M0jXFIoTx_a4-L_ZcM',
        numOpenTicket: '4',
        numHoldTicket: '4',
        timeTicket: '3 min'),
    AgentStatus(
        name: 'Hendra Alfon',
        profilePicture:
            'https://media-exp1.licdn.com/dms/image/C5103AQHKk07p5oROsw/profile-displayphoto-shrink_800_800/0?e=1604534400&v=beta&t=g6q3wdUstQg3aX4tgNAt1LUF1M0jXFIoTx_a4-L_ZcM',
        numOpenTicket: '4',
        numHoldTicket: '4',
        timeTicket: 'Online'),
    AgentStatus(
        name: 'Felizia Tanzil',
        profilePicture:
            'https://media-exp1.licdn.com/dms/image/C5103AQHKk07p5oROsw/profile-displayphoto-shrink_800_800/0?e=1604534400&v=beta&t=g6q3wdUstQg3aX4tgNAt1LUF1M0jXFIoTx_a4-L_ZcM',
        numOpenTicket: '4',
        numHoldTicket: '4',
        timeTicket: '3 min'),
    AgentStatus(
        name: 'Hendra Alfon',
        profilePicture:
            'https://media-exp1.licdn.com/dms/image/C5103AQHKk07p5oROsw/profile-displayphoto-shrink_800_800/0?e=1604534400&v=beta&t=g6q3wdUstQg3aX4tgNAt1LUF1M0jXFIoTx_a4-L_ZcM',
        numOpenTicket: '4',
        numHoldTicket: '4',
        timeTicket: 'Online'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
          children: [
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Agents By Ticket Status',
                    style: TextStyle(
                        fontFamily: 'Quicksand', fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            Container(
              height: 400.0,
              child: ListView.builder(
                  // scrollDirection: Axis.vertical,
                  itemCount: agentTickets.length,
                  itemBuilder: (BuildContext context, int index) {
                    // AgentStatus agentTicket = agentTickets[index];
                    return Container(
                        height: 70.0,
                        decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(5.0),
                            border: Border(bottom: BorderSide(width: 0.5))),
                        margin: EdgeInsets.all(0.0),
                        // width: 240.0,
                        // color: Colors.red,
                        child: Stack(alignment: Alignment.topCenter, children: <
                            Widget>[
                          Positioned(
                            // bottom: 15.0,
                            child: Container(
                              child: Column(
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      // mainAxisAlignment:
                                      //     MainAxisAlignment.start,
                                      // crossAxisAlignment:
                                      //     CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              child: Column(
                                                // crossAxisAlignment:
                                                //     CrossAxisAlignment.center,
                                                // mainAxisAlignment:
                                                //     MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    child: CircleAvatar(
                                                      backgroundImage:
                                                          NetworkImage(
                                                              agentTickets[
                                                                      index]
                                                                  .profilePicture),
                                                      minRadius: 25,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              // margin: EdgeInsets.only(
                                              //   left: 10.0,
                                              //   top: 10.0,
                                              // ),
                                              // width: MediaQuery.of(context)
                                              //         .size
                                              //         .width -
                                              //     100,
                                              child: Container(
                                                height: 45,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width -
                                                    100,
                                                margin:
                                                    EdgeInsets.only(left: 10),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            agentTickets[index]
                                                                .name,
                                                            style: TextStyle(
                                                              fontSize: 15.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontFamily:
                                                                  'Roboto',
                                                              letterSpacing:
                                                                  1.2,
                                                            ),
                                                          ),
                                                          Text(
                                                              agentTickets[
                                                                      index]
                                                                  .timeTicket,
                                                              style: TextStyle(
                                                                fontSize: 10.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontFamily:
                                                                    'Roboto',
                                                              ))
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 100,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Container(
                                                            width: 40,
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                    agentTickets[
                                                                            index]
                                                                        .numOpenTicket,
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            12,
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .red)),
                                                                Text('Open',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            12,
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 40,
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                    agentTickets[
                                                                            index]
                                                                        .numHoldTicket,
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            12,
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .yellow)),
                                                                Text('Hold',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            12,
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w400)),
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    // Row(
                                    //   mainAxisAlignment:
                                    //       MainAxisAlignment.start,
                                    //   children: [
                                    //     SizedBox(height: 20.0),
                                    //     Container(
                                    //       padding: EdgeInsets.only(left: 50.0),
                                    //       child: Text(
                                    //           agentTickets[index].numHoldTicket,
                                    //           style: TextStyle(
                                    //               color: Colors.grey,
                                    //               fontSize: 10.0)),
                                    //     ),
                                    //   ],
                                    // ),
                                  ]),
                            ),
                          ),
                        ]));
                  }),
            ),
          ],
        ),
      ],
    );
  }
}
