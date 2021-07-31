import 'package:flutter/material.dart';

import 'package:edufun/components/button_back.dart';
import 'package:edufun/components/playerlist.dart';
import 'package:edufun/screens/multi_ingame.dart';
import 'package:edufun/constants.dart';

class JoinLobby extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: ButtonBack(),
          elevation: 0,
        ),
        body: InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MultiGame()),
            );
          },
          child: Padding(
            padding: EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Ruang E-04",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(18),
                  child:Text(
                      "Ruang E-04",
                      style: TextStyle(
                          color: brownCS,
                          fontSize: 48,
                          fontWeight: FontWeight.bold
                      )
                  ),
                ),

                Text(
                  "00:30",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: orangeCS
                  ),
                ),

                Expanded(
                  child: PlayerList(),
                ),

              ],
            ),
          ),
        )
    );
  }
}