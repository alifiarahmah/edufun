import 'package:flutter/material.dart';

import 'package:edufun/screens/login.dart';
import 'package:edufun/screens/register.dart';
import 'package:edufun/components/text_title.dart';
import 'package:edufun/components/longbutton.dart';
import 'package:edufun/constants.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(50),
          child: Column(
            children: <Widget>[
              TextTitle(text: "Halo,\nSelamat Datang!"),
              SizedBox(height: 25),

              Expanded(
                  child: Image.asset(
                    "images/stock_login.png",
                    height: MediaQuery.of(context).size.height * 0.4,
                  )
              ),

              SizedBox(height: 20),

              LongButton(
                  to: Register(),
                  label: "Daftar",
                  bgcolor: orangeCS,
                  color: Colors.black
              ),

              SizedBox(height: 20),

              LongButton(
                  to: Login(),
                  label: "Masuk",
                  bgcolor: Colors.white,
                  color: Colors.black
              ),

            ],
          ),
        ));
  }
}
