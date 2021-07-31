import 'package:flutter/material.dart';

import 'package:edufun/constants.dart';

class LongButton extends StatelessWidget {
  final Widget to;
  final Color color, bgcolor;
  final String label;
  final double width, height;
  LongButton({this.bgcolor, this.color, this.label, this.to, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        width: (width != null)? width:MediaQuery.of(context).size.width * 0.8,
        height: (height != null)? height:MediaQuery.of(context).size.height * 0.075
      ),
      child: ElevatedButton(
        onPressed: () {
          if (to != null) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => to),
            );
          }
        },
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(color),
            backgroundColor: (bgcolor != null)? MaterialStateProperty.all(bgcolor):MaterialStateProperty.all(orangeCS)
        ),
        child: Text(
          label,
          style: TextStyle(
            color: color,
            fontSize: 16
          ),
        ),
      ),
    );
  }
}
