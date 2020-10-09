import 'package:flutter/material.dart';
import 'package:mobile_sedayutalk/ui/snippets/chartAdmin.dart';
import 'package:mobile_sedayutalk/ui/snippets/listUpdateTicket.dart';

Widget overviewS(context) => Container(
      child: Column(
        children: [
          Container(
            height: 280,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  width: 0.1,
                )),
            child: Column(
              children: [
                Row(
                  // decoration: BoxDecoration(),

                  children: [
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: Text('Tickets Overview',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.grey[900])),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 13),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        width: 0.1,
                                      )),
                                  height: 150.0 /
                                      MediaQuery.of(context).devicePixelRatio,
                                  width: 175.30 /
                                      MediaQuery.of(context).devicePixelRatio,
                                  // color: Colors.amber[900],
                                  child: Container(
                                      padding: EdgeInsets.all(5.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [Text('150'), Text('Total')],
                                      )))
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        width: 0.1,
                                      )),
                                  height: 150.0 /
                                      MediaQuery.of(context).devicePixelRatio,
                                  width: 175.30 /
                                      MediaQuery.of(context).devicePixelRatio,
                                  // color: Colors.amber[900],
                                  child: Container(
                                      padding: EdgeInsets.all(5.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [Text('140'), Text('Closed')],
                                      )))
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        width: 0.1,
                                      )),
                                  height: 150.0 /
                                      MediaQuery.of(context).devicePixelRatio,
                                  width: 175.30 /
                                      MediaQuery.of(context).devicePixelRatio,
                                  // color: Colors.amber[900],
                                  child: Container(
                                      padding: EdgeInsets.all(2.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('2'),
                                          Text(
                                            'Escalated',
                                            style: TextStyle(fontSize: 12.0),
                                          )
                                        ],
                                      )))
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        width: 0.1,
                                      )),
                                  height: 150.0 /
                                      MediaQuery.of(context).devicePixelRatio,
                                  width: 175.30 /
                                      MediaQuery.of(context).devicePixelRatio,
                                  // color: Colors.amber[900],
                                  child: Container(
                                      padding: EdgeInsets.all(5.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [Text('4.2'), Text('Rating')],
                                      )))
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                        height: 176,
                        width: MediaQuery.of(context).size.width - 20,
                        child: ChartAdmin())
                  ],
                ),
                // Column(
                //   children: <Widget>[
                //     Container(
                //         padding: EdgeInsets.only(top: 20),
                //         width: MediaQuery.of(context).size.width - 20,
                //         child: ListUpdateTickets())
                //   ],
                // )
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Update Your Tickets',
                    style: TextStyle(
                        fontFamily: 'Quicksand', fontWeight: FontWeight.w800),
                  ),
                  Container(
                      // padding: EdgeInsets.only(top: 10),
                      // width: MediaQuery.of(context).size.width - 20,
                      // height: 180,
                      child: ListUpdateTickets())
                ],
              ))
        ],
      ),
    );

// Column(
//   children: [
//     Container(child: ListUpdateTickets()),
//   ],
// ),
