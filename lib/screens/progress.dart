import 'package:edufun/components/longbutton.dart';
import 'package:flutter/material.dart';

import 'package:edufun/components/button_back.dart';
import 'package:edufun/constants.dart';

class Progress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: ButtonBack(),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 18, horizontal: 56),
        child: Column(
            children: [
              Text(
                "Progress Matematika",
                style: TextStyle(
                    color: orangeCS,
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                ),
              ),
              SizedBox(height: 18),
              Text("Lihat perkembangan murid dan beri masukan untuk pengembangan siswa"),
              SizedBox(height: 18),

              Expanded(
                child: Column(
                  children: [
                    Image.asset(
                        "images/stock_graph.png",
                        height: MediaQuery.of(context).size.height * 0.3
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Standar PISA",
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),
                          )),
                        Text("80")
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                              "Nilai tertinggi",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),
                            )),
                        Text("75")
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                              "Nilai rata-rata",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),
                            )),
                        Text("60")
                      ],
                    )
                  ],
                ),
              ),
              LongButton(
                label: "Bagikan",
                color: Colors.black,
              ),
              SizedBox(height: 18),
              LongButton(
                label: "Unduh progres lengkap",
                bgcolor: brownCS,
              )
            ]
        ),
      )
    );
  }
}