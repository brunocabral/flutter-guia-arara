import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {

  final IconData icon;
  final String text;
  final PageController controller;
  final int page;

  //construtor
  DrawerTile(this.icon, this.text, this.controller, this.page);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell( //área responsiva ao touch
        onTap: () {
          Navigator.of(context).pop(); //remove pagina atual
          controller.jumpToPage(page); //muda pra outra pagina
        },
        child: Container(
          height: 60.0,
          child: Row(
            children: <Widget>[
              Icon(
                icon,
                size: 32.0,
                color: controller.page.toInt() == page ?
                Colors.indigo : Colors.black,
              ),
              SizedBox( width: 32.0),
              Text( text,
                style: TextStyle(
                  fontSize: 16.0,
                  color: controller.page.toInt()  == page ?
                  Colors.indigo : Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
