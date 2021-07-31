import 'package:edufun/screens/leaderboard.dart';
import 'package:flutter/material.dart';

import 'package:edufun/components/button_back.dart';
import 'package:edufun/components/longbutton.dart';
import 'package:edufun/components/playerlist.dart';
import 'package:edufun/constants.dart';
import 'package:edufun/screens/gamemode.dart';

class MultiFinish extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: ButtonBack(),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            Text(
              "Selamat, kamu berhasil mengumpulkan",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),
            ),
            Text(
              "100 XP",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 56,
                color: orangeCS,
                shadows: [
                  Shadow(
                      color: Colors.black
                  )
                ]
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Leaderboard()),
                  );
                },
                child: PlayerList(),
              ),
            ),
            LongButton(
              label: "MAIN LAGI",
              bgcolor: greenCS,
            ),
            SizedBox(height: 18),
            LongButton(
              to: GameMode(),
              label: "KELUAR",
              bgcolor: redCS,
            )
          ],
        ),
      )
    );
  }
}