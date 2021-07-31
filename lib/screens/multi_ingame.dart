import 'package:edufun/components/longbutton.dart';
import 'package:edufun/constants.dart';
import 'package:flutter/material.dart';

import 'package:edufun/components/button_menu.dart';

class MultiGame extends StatelessWidget {
  // TODO: buat stateful klo masih ada waktu
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: ButtonMenu(),
        actions: [
          FlatButton(
            onPressed: (){},
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
        padding: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(18),
              child: Image.asset("images/stock_indicator.png"),
            ),

            Expanded(
              child: Text("pil"),
            ),
            LongButton(
              label: "Jawab",
              bgcolor: brownCS,
            ),
            Row(
              children: [
                Expanded(
                  child: Text("sdafa")
                )
              ],
            )
          ],
        ),
      )
    );
  }
}