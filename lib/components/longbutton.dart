import 'package:flutter/material.dart';

class LongButton extends StatelessWidget {
  final Widget to;
  final Color color, bgcolor;
  final String label;
  LongButton({this.bgcolor, this.color, this.label, this.to});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.075
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
            backgroundColor: MaterialStateProperty.all(bgcolor)
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
