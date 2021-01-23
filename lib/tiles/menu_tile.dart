import 'package:flutter/material.dart';
import 'file:///F:/projetos_flutter/guia_arara/lib/screens/info_screen.dart';
import 'file:///F:/projetos_flutter/guia_arara/lib/screens/sectors_screen.dart';

class MenuTile extends StatelessWidget {

  String title;
  IconData iconData;
  Color color;
  Widget route;

  MenuTile({this.title, this.iconData, this.color, this.route});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,
          MaterialPageRoute(builder: (context) => route )
        );
      },
      child: Container(
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(iconData, size: 48),
            SizedBox(
              height: 10,
            ),
            Text(title),
            SizedBox(
              height: 6,
            ),
          ],
        ),
      ),
    );
  }
}
