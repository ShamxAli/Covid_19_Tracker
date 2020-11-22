import 'package:flutter/material.dart';

class GlobalCardTile extends StatelessWidget {
  final String caseType;
  final String numOfCases;
  final Color tileColor;
  final String assetImage;

  GlobalCardTile(
      {this.caseType, this.numOfCases, this.tileColor, this.assetImage});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      color: tileColor,
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          width: double.infinity,
          height: 110.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Global",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        fontFamily: 'MyFont'),
                  ),
                  Text("$caseType",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0)),
                  Text('$numOfCases',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ))
                ],
              ),
              Opacity(
                  opacity: 0.5,
                  child: Image.asset(
                    "$assetImage",
                    height: 80.0,
                  )),
            ],
          )),
    );
  }
}
