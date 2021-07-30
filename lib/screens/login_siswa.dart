import 'package:flutter/material.dart';

import 'package:edufun/components/input_text.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.all(24),
          child: Column(
            children: <Widget>[
              InputText()
            ],
          ),
        )
    );
  }
}