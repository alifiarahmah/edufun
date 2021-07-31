import 'package:flutter/material.dart';

import 'package:edufun/constants.dart';

class PlayerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        PlayerEntry(number: 1, name: "Asdf"),
        PlayerEntry(number: 2, name: "Ghjk"),
        PlayerEntry(number: 3, name: "Asdf"),
        PlayerEntry(number: 4, name: "Asdf"),
        PlayerEntry(number: 5, name: "Asdf"),
      ],
    );
  }
}

class PlayerEntry extends StatelessWidget{
  final int number;
  final String name;
  PlayerEntry({this.number, this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "$number",
          style: TextStyle(
            color: orangeCS,
            fontWeight: FontWeight.bold
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: CircleAvatar(backgroundColor: Colors.grey),
        ),
        Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
      ],
    );
  }

}