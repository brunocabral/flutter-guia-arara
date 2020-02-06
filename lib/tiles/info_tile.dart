import 'package:flutter/material.dart';
import 'package:guia_arara/screens/home_screen.dart';
import 'package:guia_arara/screens/intro_screen.dart';
import 'package:guia_arara/tabs/home_tab.dart';


///Constrói parágrafos com ícones, são utilizados nas telas de introdução [IntroScreen]
///e [HomeTab] que contem as orientações básicas.
class CustomInfoTile extends StatelessWidget {

  final String text;
  final IconData iconData;
  double iconSize;
  double textFontSize;

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
