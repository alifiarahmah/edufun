import 'package:flutter/material.dart';
import 'package:edufun/screens/comingsoon_singlepuzzle.dart';
import 'package:edufun/constants.dart';
import 'package:edufun/components/button_back.dart';

class LevelList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: ButtonBack(),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.leaderboard)),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.settings)),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            Text(
              "Level",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 36
              ),
            ),
            SizedBox(height: 30),

            Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 45,
                  crossAxisSpacing: 45,
                  children: List.generate(9, (i) {
                    return ElevatedButton(
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(Colors.black),
                          backgroundColor: MaterialStateProperty.all(orangeCS)
                      ),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ComingSoonSP()),
                        );
                      },
                      child: Text(
                        "${i+1}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24
                        ),
                      ),
                    );
                  }),
                )
            )
          ],
        ),
      )
    );
  }
}