import 'package:edufun/components/longbutton.dart';
import 'package:flutter/material.dart';

class SoalPuzzle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
            "Ibu Evan punya 5 anak:\nLala, Lili, Lulu, Lolo, ...\nSiapa nama anak ke-5?",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24
            )
        ),
        Row(
          children: [
            LongButton(
              label: "Evan",
              color: Colors.black,
              width: MediaQuery.of(context).size.width * 0.2,
            ),
            LongButton(
              label: "Lele",
              width: MediaQuery.of(context).size.width * 0.2,
            ),
          ],
        ),

        Row(
          children: [
            LongButton(
              label: "Lolo",
              color: Colors.black,
              width: MediaQuery.of(context).size.width * 0.2,
            ),
            LongButton(
              label: "Lala",
              color: Colors.black,
              width: MediaQuery.of(context).size.width * 0.2,
            ),
          ],
        )
      ],
    );
  }
}