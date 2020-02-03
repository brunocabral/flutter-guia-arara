import 'package:flutter/material.dart';
import 'package:guia_arara/models/climbing_route.dart';

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
              color: Colors.blueGrey
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
            style: TextStyle(
              color: _getRouteColorByType(type)
            ),
          ),
          trailing: Text(
            grade,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600
            ),
          ),
        ),
      ),
    );
  }

  Color _getRouteColorByType(String type) {
    switch (type) {
      case ClimbingRoute.boulderType:
        return Colors.deepPurpleAccent;
      case ClimbingRoute.sportType:
        return Colors.teal;
      case ClimbingRoute.tradType:
        return Colors.green;
      default:
        return Colors.grey;
    }
  }
}
