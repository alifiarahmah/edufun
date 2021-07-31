import 'package:flutter/material.dart';

class GameOpt extends StatelessWidget {
  final Image image;
  final String label;
  GameOpt({this.image, this.label});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
          width: MediaQuery.of(context).size.width * 0.2,
          height: MediaQuery.of(context).size.height * 0.25
      ),
      child: ElevatedButton(
        onPressed: (){},
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: image
              ),
              Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13
                ),
              ),
            ],
          ),
        ),
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.black),
            backgroundColor: MaterialStateProperty.all(Colors.white)
        ),
      ),
    );
  }
}