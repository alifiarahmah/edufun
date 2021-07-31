import 'package:edufun/screens/guru_creategame.dart';
import 'package:flutter/material.dart';

import 'package:edufun/components/longbutton.dart';
import 'package:edufun/components/input_text.dart';
import 'package:edufun/components/input_password.dart';
import 'package:edufun/screens/guru_creategame.dart';

class LoginGuru extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color(0xffF59300),
                        Color(0xff323643)
                      ]
                  ),
                ),
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.8,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          topLeft: Radius.circular(50),
                        )
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 70, left: 30, right: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Hai Guru",
                            style: TextStyle(
                                color: Color(0xff3A3A3A),
                                fontWeight: FontWeight.w900,
                                fontSize: 30
                            ),
                          ),

                          SizedBox(height: 10),

                          Text(
                            "Masuk untuk Melanjutkan",
                            style: TextStyle(
                              color: Color(0xff777777),
                            ),
                          ),
                          SizedBox(height: 30),

                          InputText(label: "Mobile Number/Email"),
                          SizedBox(height: 20),

                          InputPassword(label: "Password"),
                          SizedBox(height: 20),

                          LongButton(
                            label: "Masuk",
                            width: MediaQuery.of(context).size.width * 0.9,
                            to: CreateGame()
                          ),
                          SizedBox(height: 20),

                          TextButton(
                            onPressed: (){},
                            child: Text(
                              "Lupa password?",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.grey
                              ),
                            ),
                          )

                        ],
                      ),
                    )
                )
            ),
            Positioned(
              top: MediaQuery.of(context).size.width * 0.03,
              right: MediaQuery.of(context).size.width * 0.1,
              child: Image.asset(
                "images/stock_girl_laptop.png",
                height: 200,
              ),
            )
          ],
        )
    );
  }
}