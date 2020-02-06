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
            padding: EdgeInsets.only(left: 24.0, top: 16.0),
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 0.0, bottom: 8.0),
                padding: EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 8.0),
                height: 170.0,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("images/misc/capa_texto2.png"),fit: BoxFit.cover)
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
              Color.fromRGBO(242, 153, 74, 1),
              Colors.white
            ],
            begin: Alignment.topCenter, //onde comeca
            end: Alignment.bottomCenter //onde termina
        ),
      ),
    );
  }
}
