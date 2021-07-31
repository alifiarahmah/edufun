import 'package:flutter/material.dart';

class InputPassword extends StatefulWidget{
  final String hint, label;
  InputPassword({this.hint, this.label});

  @override
  _InputPassword createState() => _InputPassword(hint: hint, label: label);
}

class _InputPassword extends State<InputPassword>{
  final String hint, label;
  _InputPassword({this.hint, this.label});

  @override
  Widget build(BuildContext context) {
    bool show = false;
    void showPassword() {
      setState(() {
        show = !show;
      });
    }

    return TextField(
      obscureText: show,
      decoration: InputDecoration(
        hintText: (hint != null)? hint:null,
        labelText: (label != null)? label:null,
        suffixIcon: IconButton(
            icon: Icon(Icons.visibility),
            onPressed: showPassword, // TODO: perbaiki show password
        )
      ),
    );
  }
}