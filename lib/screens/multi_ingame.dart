import 'package:edufun/components/button_gameopt.dart';
import 'package:flutter/material.dart';

import 'package:edufun/components/button_menu.dart';
import 'package:edufun/components/longbutton.dart';
import 'package:edufun/components/iconbutton.dart';
import 'package:edufun/components/soal_puzzle.dart';
import 'package:edufun/constants.dart';
import 'package:edufun/screens/multi_finish.dart';

class MultiGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: ButtonMenu(),
        actions: [
          FlatButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BuyCoin()),
              );
            },
            child: Row(
              children: [
                Image.asset("images/sym_coin.png"),
                Text("0 Coins")
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset("images/stock_indicator.png"),
            ),
            SizedBox(height: 20),

            Expanded(
              child: SoalPuzzle(),
            ),

            LongButton(
              to: MultiFinish(),
              label: "Jawab",
              bgcolor: brownCS,
            ),

            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SquareIconButton(
                  icon: Icons.mic,
                  bgcolor: redCS,
                  width: MediaQuery.of(context).size.width * 0.5,
                ),
                LongButton(
                  label: "?",
                  width: MediaQuery.of(context).size.width * 0.1,
                  bgcolor: greenCS,
                ),
                SquareIconButton(
                  icon: Icons.chat_bubble,
                  width: MediaQuery.of(context).size.width * 0.1,
                  bgcolor: Colors.white,
                  color: brownCS,
                )
              ],
            )
          ],
        ),

      )
    );
  }
}

class BuyCoin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text(
        "Ups, bantuanmu sudah habis!",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
        ),
      ),
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Harap beli dahulu ya"),
              SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GameOpt(
                    image: Image.asset("images/sym_coin.png"),
                    label: "1 bantuan\nRp5.000",
                  ),
                  SizedBox(width: 10),
                  GameOpt(
                    image: Image.asset("images/sym_coin.png"),
                    label: "5 bantuan\nRp15.000",
                  ),
                  SizedBox(width: 10),
                  GameOpt(
                    image: Image.asset("images/sym_coin.png"),
                    label: "10 bantuan\nRp20.000",
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}