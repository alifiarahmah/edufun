import 'package:edufun/components/longbutton.dart';
import 'package:flutter/material.dart';
import 'package:edufun/components/longbutton.dart';

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
              label: "E",
            ),
          ],
        )
      ],
    );
  }
}