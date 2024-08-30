import 'package:flutter/material.dart';
import 'package:guia_arara/helpers/climbing_helper.dart';
import 'package:guia_arara/models/climbing_sector.dart';
import 'package:guia_arara/screens/routes_screen.dart';
import 'package:guia_arara/tiles/sector_tile.dart';

class SectorsScreen extends StatelessWidget {

  final ClimbingHelper helper = ClimbingHelper();

  SectorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: const Text("Setores"),
        centerTitle: true,
      ),
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0 ),
          children: _buildSectorTiles()
      ),
    );
  }

  List<Widget> _buildSectorTiles(){
    List<Widget> tiles = [];

    for (ClimbingSector setor in helper.setores) {
      tiles.add(SectorTile(
        climbingSector: setor,
        pageRoute: RoutesScreen(helper, setor.name),
      ));
    }
    return tiles;
  }
}
