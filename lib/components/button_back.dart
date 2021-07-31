import 'package:flutter/material.dart';

class ButtonBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: (){
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back)
    );
  }
}