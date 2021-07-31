import 'package:edufun/components/text_title.dart';
import 'package:edufun/screens/gamemode.dart';
import 'package:flutter/material.dart';
import 'package:edufun/components/longbutton.dart';
import 'package:edufun/constants.dart';

class ComingSoonSP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(18),
        alignment: Alignment.center,
        child: Column(
          children: [
            TextTitle(text: "Coming Soon"),
            Image.asset("images/singlepuzzle.png"),
            LongButton(
                to: GameMode(),
                label: "Back",
                bgcolor: greyCS
            )
          ],
        ),
      ),
    );
  }
}