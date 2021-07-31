import 'package:flutter/material.dart';

import 'package:edufun/components/bigbutton.dart';
import 'package:edufun/components/longbutton.dart';
import 'package:edufun/components/input_text.dart';

import 'package:edufun/screens/level_list.dart';
import 'package:edufun/screens/multi_createlobby.dart';
import 'package:edufun/screens/multi_joinlobby.dart';

import 'package:edufun/constants.dart';

class PuzzleGameMode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
          actions: [
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.person)),
          ],
        ),
      body: Container(
        padding: EdgeInsets.all(18),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            SizedBox(height: 30),

            BigButton(
              color: Colors.black,
              bgcolor: orangeCS,
              image: Image.asset("images/stock_puzzle.png"),
              title: "Puzzles",
              desc: "Yuk asah otak kamu!",
            ),
            SizedBox(height: 30),

            Text(
              "Mau main sendiri\natau rame-rame nih?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 30),

            LongButton(
              color: Colors.black,
              label: "Main sendiri",
              to: LevelList()
            ),
            SizedBox(height: 20),

            LongButton(
              color: Colors.black,
              label: "Main rame-rame",
              to: MultiCreateJoin()
            ),

          ]
        ),
      )
    );
  }
}

class MultiCreateJoin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text(
        "Apakah kamu sudah punya ruangan?",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.w900,
        ),
      ),
      children: <Widget>[
        SimpleDialogOption(
          onPressed: () {},
          child: LongButton(
            label: "Buat ruangan baru",
            color: Colors.black,
            to: CreateLobby()
          ),
        ),
        SimpleDialogOption(
          onPressed: () {},
          child: LongButton(
            label: "Bergabung ke ruangan",
            color: Colors.black,
            to: InsertCode()
          )
        )
      ],
    );
  }
}

class InsertCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text(
        "Masukkan kode",
        style: TextStyle(
          fontWeight: FontWeight.w900,
        ),
      ),
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Kode didapat dari teman/gurumu"),

              InputText(
                hint: "XX-XX-XX",
              ),

              SimpleDialogOption(
                  onPressed: () {},
                  child: LongButton(
                    label: "Bergabung",
                    color: Colors.black,
                    to: JoinLobby()
                  )
              )
            ],
          ),
        )
      ],
    );
  }
}