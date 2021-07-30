import 'package:flutter/cupertino.dart';

class TextTitle extends StatelessWidget {
  final String text;
  TextTitle({this.text});

  @override
  Widget build(BuildContext context){
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 36
      )
    );
  }
}