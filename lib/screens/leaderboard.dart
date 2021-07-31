import 'package:edufun/components/playerlist.dart';
import 'package:flutter/material.dart';
import 'package:edufun/constants.dart';

class Leaderboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: BackButton(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height * 0.1),
        child: ListView(
          children: [
            Text(
              "Ranking",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: orangeCS,
                  fontWeight: FontWeight.bold,
                  fontSize: 30
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Bandingkan skormu dengan teman-teman",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Icon(Icons.leaderboard, size: 200, color: orangeCS),
            SizedBox(height: 20),
            PlayerList()
          ],
        ),
      )
    );
  }
}