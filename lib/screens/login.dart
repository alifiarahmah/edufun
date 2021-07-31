import 'package:flutter/material.dart';

import 'package:edufun/components/text_title.dart';
import 'package:edufun/components/gradientbigbutton.dart';
import 'package:edufun/screens/login_siswa.dart';
import 'package:edufun/screens/login_guru.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextTitle(text: "Status Kamu"),

            SizedBox(height: 50),

            // Siswa
            GradientBigButton(
              to: LoginSiswa(),
              start: Color(0xffA46D1D),
              end: Color(0xff3A3A41),
              label: "Siswa",
              image: Image.asset(
                  "images/stock_girl_blonde.png",
                  height: MediaQuery.of(context).size.height * 0.25
              ),
            ),

            SizedBox(height: 30),

            // Guru
            GradientBigButton(
              to: LoginGuru(),
              start: Color(0xffFF5C00),
              end: Color(0xff2BCE10),
              label: "Guru",
              image: Image.asset(
                  "images/stock_girl_laptop.png",
                  height: MediaQuery.of(context).size.height * 0.25
              ),
            )

          ],
        ),
      )
    );
  }
}