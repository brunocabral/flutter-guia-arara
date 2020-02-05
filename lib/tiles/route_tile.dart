import 'package:flutter/material.dart';
import 'package:guia_arara/models/climbing_route.dart';
import 'package:guia_arara/screens/details_screen.dart';

class RouteTile extends StatelessWidget {

  final ClimbingRoute climbingRoute;

  RouteTile({this.climbingRoute});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Colors.blueAccent,
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => DetailsScreen(climbingRoute))
          );
        },
        child: ListTile(
          leading: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: _getImage(climbingRoute.imgPath),
                fit: BoxFit.cover
              ),
              color: Colors.blueGrey
            ),
          ),
          title: Text(
            climbingRoute.name ?? "Via sem nome",
            style: TextStyle(
              fontSize: 18.0
            ),
          ),
          subtitle: Text(
            climbingRoute.type ?? "-",
            style: TextStyle(
              color: _getRouteColorByType(climbingRoute.type)
            ),
          ),
          trailing: Text(
            climbingRoute.grade,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600
            ),
          ),
        ),
      ),
    );
  }

  ///Carrega imagem
  AssetImage _getImage(String imgPath) {
    AssetImage img;
    AssetImage placeholderImg = AssetImage("images/misc/placeholder.png");
    try {
      img = (imgPath != null) ? AssetImage(imgPath) : placeholderImg;
    } catch (e) {
      return placeholderImg;
    }
    return img;
  }
  
  Color _getRouteColorByType(String type) {
    switch (type) {
      case ClimbingRoute.boulderType:
        return Colors.deepOrange;
      case ClimbingRoute.sportType:
        return Colors.teal;
      case ClimbingRoute.tradType:
        return Colors.deepPurpleAccent;
      default:
        return Colors.grey;
    }
  }
}
