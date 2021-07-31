import 'package:flutter/material.dart';
import 'package:edufun/constants.dart';

import 'package:edufun/components/bigbutton.dart';
import 'package:edufun/screens/level_list.dart';

class GameMode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text(
              "Kamu ingin main game apa?",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30),

            BigButton(
              color: Colors.white,
              bgcolor: brownCS,
              image: Image.asset("images/stock_think.png"),
              title: "Cerita",
              desc: "Eksplorasi cerita dan\nselesaikan masalah!",
            ),
            SizedBox(height: 20),

            BigButton(
              to: LevelList(),
              color: Colors.black,
              bgcolor: orangeCS,
              image: Image.asset("images/stock_puzzle.png"),
              title: "Puzzles",
              desc: "Yuk asah otak kamu!",
            ),
            SizedBox(height: 20),

            BigButton(
              color: Colors.white,
              bgcolor: greyCS,
              image: Image.asset("images/stock_exam.png"),
              title: "Quiz",
              desc: "Put your skills up to a test",
            ),

          ],
        ),
      )
    );
  }
}