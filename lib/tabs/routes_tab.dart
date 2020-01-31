import 'package:flutter/material.dart';
import 'package:guia_arara/tiles/sector_tile.dart';

class RoutesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0 ),
      children: <Widget>[
        SectorTile(
            id: "01",
            name: "Juliano Magalhães"
        ),
        SectorTile(
            id:"02",
            name:"Boulders"
        ),
        SectorTile(
            id:"03",
            name:"Negativos"
        )
        ,
        SectorTile(
            id:"04",
            name:"Fissuras"
        ),
        SectorTile(
            id:"05",
            name:"Fenda"
        ),
        SectorTile(
            id:"06",
            name:"Escolinha"
        ),
        SectorTile(
            id:"07",
            name:"Drone"
        ),
        SectorTile(
            id:"--",
            name:"Isoladas"
        ),
      ],
    );
  }
}
