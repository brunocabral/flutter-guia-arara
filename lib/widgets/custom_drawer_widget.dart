import 'package:flutter/material.dart';
import 'package:guia_arara/tiles/drawer_tile.dart';

class CustomDrawer extends StatelessWidget {

  final PageController pageController;

  //construtor
  CustomDrawer(this.pageController);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: <Widget>[
          _buildDrawerBackground(),
          ListView(
            padding: EdgeInsets.only(left: 16.0, top: 16.0),
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 4.0,right: 16.0),
                height: 170.0,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("images/misc/capa_texto.png"),fit: BoxFit.cover)
                ),
              ),
              Divider(),
              DrawerTile(Icons.announcement, "Orientações básicas", pageController, 0),
              DrawerTile(Icons.place, "Como Chegar", pageController, 1),
              DrawerTile(Icons.map, "Croqui do Setores", pageController, 2),
              DrawerTile(Icons.filter_9_plus, "Graduação", pageController, 3),
              DrawerTile(Icons.playlist_add_check, "Setores e Vias", pageController, 4),
              DrawerTile(Icons.info_outline, "Sobre", pageController, 5),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerBackground() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color.fromRGBO(5, 117, 230, 1),
              Color.fromRGBO(0, 242, 96, 1)
            ],
            begin: Alignment.topCenter, //onde comeca
            end: Alignment.bottomCenter //onde termina
        ),
      ),
    );
  }
}
