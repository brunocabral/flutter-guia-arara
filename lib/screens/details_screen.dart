import 'package:flutter/material.dart';
import 'package:guia_arara/models/climbing_route.dart';
import 'package:photo_view/photo_view.dart';

class DetailsScreen extends StatelessWidget {

  final ClimbingRoute route;

  DetailsScreen(this.route);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(route.name),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: 350,
            child: ClipRect(
              child: PhotoView(
                  initialScale: PhotoViewComputedScale.contained * 1.1,
                  minScale: PhotoViewComputedScale.contained * 1.1,
                  maxScale: PhotoViewComputedScale.contained * 2.5,
                  backgroundDecoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                  imageProvider: (route.imgPath != null)?
                  AssetImage(route.imgPath):
                  AssetImage("images/misc/placeholder.png"),
              ),
            ),
          ),
          Align(alignment: Alignment.bottomCenter,child: _buildContent(context, route)),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 80, width: 80,
              decoration: new BoxDecoration(
                border: Border.all(color: Theme.of(context).scaffoldBackgroundColor, width: 10),
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Center(
                child: Text(route.id,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold
                  ),
                )
              )
            ),
          ),
        ],
      ),
    );
  }

  Container _buildContent(context, ClimbingRoute route) {
    return Container(
          height: MediaQuery.of(context).size.height / 2.4,
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: SingleChildScrollView(
            padding: EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                SizedBox(height: 16.0),
                Chip(
                  label: Text(
                    route.name ?? "Via sem nome",
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.black
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Modalidade:"),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Chip(
                        backgroundColor: Colors.white,
                        label: Text(
                          route.type,
                          style: TextStyle(
                              color: _getChipColorByType(route.type)
                          ),
                        ),
                      ),
                    ),
                    Text("Grau:"),
                    Chip(
                      backgroundColor: Colors.white,
                      label: Text(
                        route.grade,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: _getChipColorByType(route.type)
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 32.0,),
                Text(route.description ?? "Nenhuma descrição cadastrada",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),

          ),
        );
  }

  Color _getChipColorByType(String type) {
    switch (type) {
      case ClimbingRoute.boulderType:
        return Colors.deepPurpleAccent;
      case ClimbingRoute.sportType:
        return Colors.teal;
      case ClimbingRoute.tradType:
        return Colors.green;
      default:
        return Colors.grey;
    }
  }
}
