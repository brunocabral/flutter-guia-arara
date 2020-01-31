import 'package:flutter/material.dart';

class RouteTile extends StatelessWidget {

  final String imgPath;
  final String name;
  final String type;
  final String grade;

  RouteTile({this.imgPath, this.name, this.type, this.grade});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Colors.blueAccent,
        onTap: (){
//          Navigator.of(context).push(
//              MaterialPageRoute(builder: (context) => DetalhesScreen())
//          );
        },
        child: ListTile(
          leading: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: (imgPath != null)?
                AssetImage(imgPath):
                AssetImage("images/misc/placeholder.png"),
                fit: BoxFit.cover
              ),
              color: Colors.pink
            ),
          ),
          title: Text(
            name ?? "Via sem nome",
            style: TextStyle(
              fontSize: 18.0
            ),
          ),
          subtitle: Text(
            type ?? "-",
//            style: TextStyle(
//
//            ),
          ),
          trailing: Text(
            "V1",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600
            ),
          ),
        ),
      ),
    );
  }
}
