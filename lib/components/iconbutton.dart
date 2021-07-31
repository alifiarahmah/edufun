import 'package:flutter/material.dart';

import 'package:edufun/constants.dart';

class SquareIconButton extends StatelessWidget {
  final Widget to;
  final Color color, bgcolor;
  final IconData icon;
  final double width, height;
  SquareIconButton({this.bgcolor, this.color, this.icon, this.to, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
          width: (width != null)? width:MediaQuery.of(context).size.width * 0.1,
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
        child: Icon(icon, color: color),
      ),
    );
  }
}
