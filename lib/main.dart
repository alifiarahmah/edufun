import 'package:flutter/material.dart';

import 'screens/landing.dart';
import 'constants.dart';

// TODO: hapus sebelum bener2 build
import 'screens/login_guru.dart';


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
      home: LoginGuru(), // TODO: klo dah kelar banget ganti jadi Landing(
    );
  }
}
