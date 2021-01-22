import 'package:flutter/material.dart';
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
        crossAxisSpacing: 16,
        padding: EdgeInsets.only(left: 16, right: 16),
        mainAxisSpacing: 16,
        children: _menuItems.map((data) {
          return MenuTile(
            color: color,
            iconData: data.icon,
            title: data.title,
            route: data.r,
          );
        }).toList(),
      ),
    );
  }

  List<Item> _buildItems(){
    List<Item> items = List<Item>();
    items.add(
        Item(title: "Orientações Básicas", icon: Icons.announcement, route: )
    );
    items.add(
        Item(title: "Como Chegar", icon: Icons.directions_car)
    );
    items.add(
        Item(title: "Mapa Local", icon: Icons.map)
    );
    items.add(
        Item(title: "Setores e Vias", icon: Icons.format_list_numbered)
    );
    items.add(
        Item(title: "Graduação", icon: Icons.filter_9_plus)
    );
    items.add(
        Item(title: "Sobre", icon: Icons.info_outline)
    );
    return items;
  }

}



class Item {
  String title;
  IconData icon;
  Widget route;

  Item({this.title, this.icon, this.route});
}