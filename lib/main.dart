import 'package:flutter/material.dart';

import 'package:edufun/screens/landing.dart';
import 'package:edufun/constants.dart';

import 'package:edufun/screens/multi_ingame.dart';

// EDUFUN
// By Mantan TPB

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
      home: Landing(),
    );
  }
}
