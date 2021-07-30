import 'package:flutter/material.dart';

import 'package:edufun/components/text_title.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          TextTitle(text: "Status Kamu"),
        ],
      ),
    );
  }
}