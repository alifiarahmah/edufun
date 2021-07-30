import 'package:flutter/material.dart';

import 'components/text_title.dart';
import 'components/longbutton.dart';

void main() {
  runApp(MyApp());
}

const orangeCS = Color(0xffF59300);
const brownCS = Color(0xff7A421D);
const redCS = Color(0xffE32929);
const greenCS = Color(0xff80CF00);
const greyCS = Color(0xff323643);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Landing(), // TODO: klo dah kelar banget ganti jadi Landing(
    );
  }
}

class Landing extends StatelessWidget {
  // Edufun logo
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: FlatButton(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Welcome()));
          },
          child: Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ), // TODO: cari cara buat bener2 ketengahin
                  Image.asset("images/logo.png",
                      height: MediaQuery.of(context).size.height * 0.6),
                  Text(
                    "Ketuk untuk mulai",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
                  )
                ],
              )),
        ));
  }
}

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(50),
          child: Column(
          children: [
            TextTitle(text: "Halo,\nSelamat Datang!"),
            SizedBox(height: 25),

            Expanded(
              child: Image.asset(
                "images/stock_login.png",
                height: MediaQuery.of(context).size.height * 0.4,
              )
            ),

            LongButton(
              to: null, // TODO: add Login()
              label: "Masuk",
              bgcolor: Colors.white,
              color: Colors.black
            ),

            SizedBox(height: 20),

            LongButton(
              to: null, // TODO: add Register()
              label: "Daftar",
              bgcolor: orangeCS,
              color: Colors.black
            )
          ],
        ),
    ));
  }
}
