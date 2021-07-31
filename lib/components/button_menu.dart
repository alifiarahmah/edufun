import 'package:flutter/material.dart';

import 'package:edufun/components/longbutton.dart';

class ButtonMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: (){
          SimpleDialog(
            children: [
              LongButton(
                label: "Resume",
              ),
              LongButton(
                label: "Suara: mati",
              ),
              LongButton(
                label: "Exit",
              ),
            ],
          );
        },
        icon: Icon(Icons.menu)
    );
  }
}