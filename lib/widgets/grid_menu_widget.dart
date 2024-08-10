import 'package:flutter/material.dart';
import 'package:guia_arara/screens/about_screen.dart';
import 'package:guia_arara/screens/climb_map_screen.dart';
import 'package:guia_arara/screens/grade_screen.dart';
import 'package:guia_arara/screens/info_screen.dart';
import 'package:guia_arara/screens/road_map_screen.dart';
import 'package:guia_arara/screens/sectors_screen.dart';
import 'package:guia_arara/tiles/menu_tile.dart';

class GridMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var color = Colors.white;

    List<Item> _menuItems = _buildItems();
    return Flexible(
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        crossAxisSpacing: 32,
        padding: EdgeInsets.only(left: 32, right: 32),
        mainAxisSpacing: 24,
        children: _menuItems.map((data) {
          return MenuTile(
            color: color,
            iconData: data.icon,
            title: data.title,
            route: data.route,
          );
        }).toList(),
      ),
    );
  }

  List<Item> _buildItems(){
    List<Item> items = [];
    items.add(
        Item(title: "Orientações Básicas", icon: Icons.announcement, route: InfoScreen())
    );
    items.add(
        Item(title: "Como Chegar", icon: Icons.directions_car, route: RoadmapScreen())
    );
    items.add(
        Item(title: "Mapa Local", icon: Icons.map, route: ClimbmapScreen())
    );
    items.add(
        Item(title: "Setores e Vias", icon: Icons.format_list_numbered, route: SectorsScreen())
    );
    items.add(
        Item(title: "Graduação", icon: Icons.filter_9_plus, route: GradeScreen())
    );
    items.add(
        Item(title: "Sobre", icon: Icons.info_outline, route: AboutScreen())
    );
    return items;
  }

}

class Item {
  String title;
  IconData icon;
  Widget route;

  Item({ required this.title, required this.icon, required this.route});
}