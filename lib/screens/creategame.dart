import 'package:edufun/constants.dart';
import 'package:flutter/material.dart';

import 'package:edufun/components/longbutton.dart';
import 'package:edufun/components/button_gameopt.dart';
import 'package:edufun/screens/multi_createlobby.dart';

class CreateGame extends StatelessWidget {
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
                      child: ListView(
                        children: <Widget>[
                          Text(
                            "Beri Nama Game",
                            style: TextStyle(
                              fontSize: 18
                            ),
                          ),
                          Text("Bahasa Indonesia Narasi HOTS SMP Al Azhar Kelas 11 B"),
                          SizedBox(height: 10),
                          Divider(
                            height: 20,
                            thickness: 0.5,
                            indent: 0,
                            endIndent: 0,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Pilih Template Permainan HOTS",
                            style: TextStyle(
                                fontSize: 18
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GameOpt(
                                image: Image.asset("images/thumb_chat.png"),
                                label: "Game\nTeka-Teki\nDialog",
                              ),
                              GameOpt(
                                image: Image.asset("images/thumb_hug.png"),
                                label: "Game\nPilihan\nGanda",
                              ),
                              GameOpt(
                                image: Image.asset("images/thumb_heart.png"),
                                label: "Game\nPuzzle",
                              ),
                            ],
                          ),
                          SizedBox(height: 10),

                          Text(
                            "Pilih Mata Pelajaran",
                            style: TextStyle(
                                fontSize: 18
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GameOpt(
                                image: Image.asset("images/thumb_girl.png"),
                                label: "Bahasa\nIndonesia",
                              ),
                              GameOpt(
                                image: Image.asset("images/thumb_book.png"),
                                label: "IPA",
                              ),
                              GameOpt(
                                image: Image.asset("images/thumb_robot.png"),
                                label: "Matematika",
                              ),
                            ],
                          ),
                          SizedBox(height: 30),

                          LongButton(
                            to: CreateLobby(),
                            label: "Buat Game",
                          ),
                          SizedBox(height: 10),
                          LongButton(
                            label: "Buat Game untuk Whatsapp Bot",
                            bgcolor: greenCS,
                          ),
                          SizedBox(height: 10),
                          LongButton(
                            label: "Unduh Laporan Siswa",
                            bgcolor: greyCS,
                            to: Premium()
                          ),

                        ]
                      ),
                    )
                )
            ),
            Positioned(
              top: 0,
              left: MediaQuery.of(context).size.width * 0.35,
              child: Image.asset(
                "images/stock_girl_laptop.png",
                height: 150,
              ),
            )
          ],
        )
    );
  }
}

class Premium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text(
        "Langganan paket premium\ndulu, yuk!",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
      ),
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Anda akan mendapatkan akses berikut hanya dengan berlangganan Rp150.000/bulan:"),
              Text("1. Jumlah games yang tak terbatas setiap harinya"),
              Text("2. Dapat diakses oleh lebih dari 1000 siswa."),
            ],
          ),
        ),

        SimpleDialogOption(
            onPressed: () {},
            child: LongButton(
              label: "Berlangganan sekarang",
              color: Colors.black,
              width: 100,
            )
        )
      ],
    );
  }
}