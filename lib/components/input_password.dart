import 'package:flutter/material.dart';

import 'package:edufun/constants.dart';

class InputPassword extends StatelessWidget{
  final String hint, label;
  InputPassword({this.hint, this.label});

  @override
  Widget build(BuildContext context) {

    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: (hint != null)? hint:null,
        labelText: (label != null)? label:null,
        suffixIcon: IconButton(
            icon: Icon(
              Icons.visibility,
            ),
            onPressed: (){}
        )
      ),
    );
  }
}