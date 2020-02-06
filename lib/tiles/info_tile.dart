import 'package:flutter/material.dart';

class CustomInfoTile extends StatelessWidget {

  final String text;
  final IconData iconData;
  double iconSize; //default
  double textFontSize; //default

  CustomInfoTile({@required this.text, @required this.iconData, this.iconSize, this.textFontSize});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Icon(
          iconData,
          size: iconSize ?? 20.0,
          color: Colors.white,
        ),
        SizedBox(width: 8.0),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white,
                fontSize: textFontSize ?? 18.0,
                fontStyle: FontStyle.italic,
                fontFamily: 'Raleway'
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
