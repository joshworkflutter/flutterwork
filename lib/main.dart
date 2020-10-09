import 'package:flutter/material.dart';
import 'package:mobile_sedayutalk/ui/admiin/report.dart';
import 'package:mobile_sedayutalk/ui/snippets/listUpdateTicket.dart';
// import 'package:transaction/models/destination_model.dart';
// import 'package:transaction/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Travel UI',
      theme: ThemeData(
        primaryColor: Color(0xFF3EBACE),
        accentColor: Color(0xFFD8ECF1),
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
      ),
      home: Report(),
    );
  }
}
