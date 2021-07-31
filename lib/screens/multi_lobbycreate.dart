import 'package:flutter/material.dart';

import 'package:edufun/components/button_back.dart';

class LobbyCreate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: ButtonBack(),
        elevation: 0,
      ),
      body: Column(
        children: [
          Text("Ruang E-04"),
          Row(
            children: [Text("XX-XX-XX"), IconButton(icon: Icon(Icons.copy))],
          ),
          Text("00:30"),
          Column(

          )
        ],
      )
    );
  }
}