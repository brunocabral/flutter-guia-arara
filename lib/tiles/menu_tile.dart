import 'package:flutter/material.dart';

class MenuTile extends StatelessWidget {

  final String title;
  final IconData iconData;
  final Color color;
  final Widget route;

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
