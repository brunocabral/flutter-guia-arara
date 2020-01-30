import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.deepOrangeAccent,
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                floating: true,
                snap: true, //puxa pra baixo some, volta pra cima reaparece
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                flexibleSpace: FlexibleSpaceBar(
                  title: const Text("Guia de Escalada Arara"),
                  centerTitle: true,
                ),
              ),
            ],
          )
          ,
        ),

      ],
    );
  }

}
