import 'package:flutter/material.dart';

// BigButton
// Untuk GameMode

class BigButton extends StatelessWidget {
  final Widget to;
  final Color color, bgcolor;
  final Image image;
  final String title, desc;
  BigButton({this.to, this.color, this.bgcolor, this.image, this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.25
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 3),
            )
          ],
          borderRadius: BorderRadius.circular(20),
          color: bgcolor
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
              padding: EdgeInsets.all(18),
              child: Row(
                children: <Widget>[
                  image,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Expanded(
                            child: Text(
                              title,
                              style: TextStyle(
                                color: color,
                                fontWeight: FontWeight.bold,
                                fontSize: 30
                              ),
                            )
                        ),
                        Text(
                          desc,
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: color.withOpacity(0.6),
                            fontSize: 16
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
        ),
      )
    );
  }
}