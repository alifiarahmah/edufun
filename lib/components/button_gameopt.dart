import 'package:flutter/material.dart';

class GameOpt extends StatelessWidget {
  final Image image;
  final String label;
  final double width;
  GameOpt({this.image, this.label, this.width});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
          width: (width != null)? width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.1
      ),
      child: ElevatedButton(
        onPressed: (){},
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              image,
              Expanded(
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 12
                  ),
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