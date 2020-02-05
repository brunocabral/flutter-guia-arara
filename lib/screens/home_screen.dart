import 'package:flutter/material.dart';
import 'package:guia_arara/tabs/climb_map_tab.dart';
import 'package:guia_arara/tabs/grade_tab.dart';
import 'package:guia_arara/tabs/home_tab.dart';
import 'package:guia_arara/widgets/custom_drawer_widget.dart';
import 'package:guia_arara/tabs/road_map_tab.dart';
import 'package:guia_arara/tabs/sectors_tab.dart';

class HomeScreen extends StatelessWidget {
  final _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return PageView( //swipe detection and provides animation
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(), //impede de scrollar pra pages do lado
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            elevation: 2,
            title: Text("Como Chegar"),
            centerTitle: true,
          ),
          body: RoadmapTab(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            elevation: 2,
            title: Text("Croqui"),
            centerTitle: true,
          ),
          body: ClimbmapTab(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            elevation: 2,
            title: Text("Graduação"),
            centerTitle: true,
          ),
          body: GradeTab(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            elevation: 2,
            title: Text("Setores"),
            centerTitle: true,
          ),
          body: SectorsTab(),
          drawer: CustomDrawer(_pageController),
        ),
//        Scaffold(
//          appBar: AppBar(
//            elevation: 2,
//            title: Text("Sobre"),
//            centerTitle: true,
//          ),
//          body: AboutTab(),
//          drawer: CustomDrawer(_pageController),
//        ),
      ],
    );
  }
}
