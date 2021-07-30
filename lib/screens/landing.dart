import 'package:flutter/material.dart';

import 'welcome.dart';

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
                children: <Widget>[
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
