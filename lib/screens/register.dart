import 'package:flutter/material.dart';

import 'package:edufun/components/input_text.dart';
import 'package:edufun/components/input_password.dart';
import 'package:edufun/components/longbutton.dart';
import 'package:edufun/components/text_title.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 56),
        child: Column(
          children: <Widget>[
            TextTitle(text: "Mari saling mengenal"),
            SizedBox(height: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Email"),
                  InputText(hint: "johndoe@gmail.com"),
                  SizedBox(height: 10),

                  Text("Kata Sandi"),
                  InputPassword(hint: "*******"),
                  SizedBox(height: 10),

                  Text("Nama"),
                  InputText(hint: "John Doe"),
                  SizedBox(height: 10),

                  Text("Nomor Telepon"),
                  InputText(hint: "08** **** ****",)
                ],
              ),
            ),
            LongButton(label: "Lanjut")
          ],
        ),
      )
    );
  }
}