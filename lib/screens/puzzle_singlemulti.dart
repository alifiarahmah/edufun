import 'package:flutter/material.dart';

import 'package:edufun/components/bigbutton.dart';
import 'package:edufun/components/longbutton.dart';

import 'package:edufun/constants.dart';

class PuzzleGameMode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  iconSize: 50,
                  icon: Icon(Icons.keyboard_arrow_left),
                  onPressed: (){},
                ),
                IconButton(
                  iconSize: 50,
                  icon: Icon(Icons.person),
                  onPressed: (){},
                )
              ],
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  SizedBox(height: 30),

                  BigButton(
                    color: Colors.black,
                    bgcolor: orangeCS,
                    image: Image.asset("images/stock_puzzle.png"),
                    title: "Puzzles",
                    desc: "Yuk asah otak kamu!",
                  ),
                  SizedBox(height: 30),

                  Text(
                    "Mau main sendiri\natau rame-rame nih?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 30),

                  LongButton(
                    color: Colors.black,
                    label: "Main sendiri",
                    // to: // TODO: taroh LevelList
                  ),
                  SizedBox(height: 20),

                  LongButton(
                    color: Colors.black,
                    label: "Main rame-rame",
                    // to: // TODO: taroh party
                  ),

                ]
              ),
            )
          ],
        ),
      )
    );
  }
}