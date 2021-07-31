import 'package:edufun/components/longbutton.dart';
import 'package:flutter/material.dart';

class SoalPuzzle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
            "Ibu Evan punya 5 anak:\nLala, Lili, Lulu, Lolo, ...\nSiapa nama anak ke-5?",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24
            )
        ),
        SizedBox(height: 18),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PuzzleOption(label: "Evan"),
            SizedBox(width: 18),
            PuzzleOption(label: "Lele"),
          ],
        ),
        SizedBox(height: 18),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PuzzleOption(label: "Lolo"),
            SizedBox(width: 18),
            PuzzleOption(label: "Lala"),
          ],
        )
      ],
    );
  }
}

class PuzzleOption extends StatelessWidget {
  final String label;
  PuzzleOption({this.label});

  @override
  Widget build(BuildContext context) {
    return LongButton(
      label: label,
      color: Colors.black,
      width: MediaQuery.of(context).size.width * 0.2,
      height: MediaQuery.of(context).size.width * 0.2,
    );
  }
}