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
            padding: EdgeInsets.only(left: 32.0, top: 16.0),
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                padding: EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 8.0),
                height: 170.0,
                child: Text("Guia de Escalada \nPedra da Arara \nMacambira-SE" ,
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
              ),
              Divider(),
              DrawerTile(Icons.home, "Início", pageController, 0),
              DrawerTile(Icons.place, "Como Chegar", pageController, 1),
              DrawerTile(Icons.map, "Croqui do Setores", pageController, 2),
              DrawerTile(Icons.playlist_add_check, "Setores e Vias", pageController, 3),
              DrawerTile(Icons.info_outline, "Sobre", pageController, 4),
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
