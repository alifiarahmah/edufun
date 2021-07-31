import 'package:flutter/material.dart';

import 'screens/progress.dart';
import 'constants.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: orangeCS,
        fontFamily: 'Poppins'
      ),
      home: Progress(), // TODO: klo dah kelar banget ganti jadi Landing()
    );
  }
}
