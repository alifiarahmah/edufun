import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String hint, label;
  InputText({this.hint, this.label});

  @override
  Widget build(BuildContext context){
    return TextField(
      decoration: InputDecoration(
        labelText: (label != null)? label:null,
        hintText: (hint != null)? hint:null
      ),
    );
  }
}