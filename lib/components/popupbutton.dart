import 'package:flutter/material.dart';

import 'package:edufun/constants.dart';

class LongButton extends StatelessWidget {
  final void Function() action;
  final Color color, bgcolor;
  final String label;
  final double width;
  LongButton({this.bgcolor, this.color, this.label, this.action, this.width});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
          width: (width != null)? width:MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.075
      ),
      child: ElevatedButton(
        onPressed: action,
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
