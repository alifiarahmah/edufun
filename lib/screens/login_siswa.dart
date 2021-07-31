import 'package:flutter/material.dart';

import 'package:edufun/components/longbutton.dart';
import 'package:edufun/components/input_text.dart';
import 'package:edufun/components/input_password.dart';

import 'package:edufun/screens/gamemode.dart';

class LoginSiswa extends StatelessWidget {
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
                    padding: EdgeInsets.symmetric(vertical: 70, horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Hai Siswa",
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
                          label: "Masuk", // TODO: buat gradien
                          to: GameMode()
                        ),

                        SizedBox(height: 20),

                        FlatButton(
                          onPressed: (){},
                          child: Text("Lupa password"),
                        )

                      ],
                    ),
                  )
              )
          ),
          Positioned(
            top: 15,
            right: 30,
            child: Image.asset("images/stock_boy_pencil.png"),
          )
        ],
      )
    );
  }
}