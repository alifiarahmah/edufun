import 'package:flutter/material.dart';

// GradientBigButton
// Untuk Login()

class GradientBigButton extends StatelessWidget {
  final Color start, end;
  final String label;
  final Image image;
  final Widget to;
  GradientBigButton({this.start, this.end, this.label, this.image, this.to});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [start, end]
            )
        ),
        child: ConstrainedBox(
          constraints: BoxConstraints.tightFor(
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.3
          ),
          child: FlatButton(
              onPressed: () {
                if (to != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => to),
                  );
                }
              },
              child: Padding(
                padding: EdgeInsets.only(
                    left: 20, right: 18, top: 18
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        child: Text(
                          label,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          ),
                        )
                    ),
                    image
                  ],
                ),
              )
          ),
        )
    );
  }
}