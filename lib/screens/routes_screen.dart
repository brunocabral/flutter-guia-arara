import 'package:flutter/material.dart';
import 'package:guia_arara/helpers/climbing_helper.dart';
import 'package:guia_arara/models/climbing_route.dart';
import 'package:guia_arara/tiles/route_tile.dart';

class RoutesScreen extends StatelessWidget {

  final ClimbingHelper helper;
  final String name;

  RoutesScreen(this.helper, this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setor $name"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: _buildRouteTiles(name) ,
      ),
    );
  }

  List<Widget> _buildRouteTiles(String sectorName) {
    List<Widget> tiles = List<Widget>();
    
    List<ClimbingRoute> routes = helper.getAllRoutesBySector(sectorName);
    
    for (ClimbingRoute route in routes) {
      tiles.add(RouteTile(climbingRoute: route));
    }

    if (tiles.isEmpty){
      tiles.add(Center(child: Text("Não foram encontradas vias para este setor"),));
    }

    return tiles;
  }
}
