import 'package:flutter/material.dart';
import 'file:///F:/projetos_flutter/guia_arara/lib/screens/about_screen.dart';
import 'file:///F:/projetos_flutter/guia_arara/lib/screens/climb_map_screen.dart';
import 'file:///F:/projetos_flutter/guia_arara/lib/screens/grade_screen.dart';
import 'file:///F:/projetos_flutter/guia_arara/lib/screens/info_screen.dart';
import 'package:guia_arara/widgets/custom_drawer_widget.dart';
import 'file:///F:/projetos_flutter/guia_arara/lib/screens/road_map_screen.dart';
import 'file:///F:/projetos_flutter/guia_arara/lib/screens/sectors_screen.dart';
import 'package:guia_arara/widgets/grid_menu_widget.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
