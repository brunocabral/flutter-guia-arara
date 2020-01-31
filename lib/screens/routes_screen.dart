import 'package:flutter/material.dart';
import 'package:guia_arara/tiles/route_tile.dart';

class RoutesScreen extends StatelessWidget {

  final String name;

  RoutesScreen(this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setor $name"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
          RouteTile(
            imgPath: "images/setores/juliano/juliano1.jpg",
            name: "Vovó",
            type: "Boulder",
          )
        ],
      ),
    );
  }
}
