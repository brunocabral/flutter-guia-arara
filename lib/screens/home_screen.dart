import 'package:flutter/material.dart';
import 'package:guia_arara/widgets/grid_menu_widget.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildMenuBackground(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Image.asset(
                  "images/misc/capa_texto.png",scale: 3.0,
                ),
              ),
              GridMenu()
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMenuBackground() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color.fromRGBO(5, 117, 230, 1),
              Colors.white
            ],
            begin: Alignment.topCenter, //onde comeca
            end: Alignment.bottomCenter //onde termina
        ),
      ),
    );
  }
}
