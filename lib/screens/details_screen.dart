import 'package:flutter/material.dart';
import 'package:guia_arara/models/climbing_route.dart';
import 'package:photo_view/photo_view.dart';


///Visualiza as informações detalhadas de uma [ClimbingRoute]
class DetailsScreen extends StatelessWidget {

  final ClimbingRoute route;

  final double _circleSize =  80;

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
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 2 - (_circleSize / 2),
              child: ClipRect(
                child: PhotoView(
                    initialScale: PhotoViewComputedScale.contained * 1.0,
                    minScale: PhotoViewComputedScale.contained * 1.0,
                    maxScale: PhotoViewComputedScale.contained * 2.8,
                    backgroundDecoration: BoxDecoration(
                      color: Colors.black12,
                    ),
                    imageProvider: _getImage(route.imgPath),
                ),
              ),
            ),
          ),
          Align(alignment: Alignment.bottomCenter,child: _buildContent(context, route)),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: _circleSize, width: _circleSize,
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

  ///Carrega imagem da via
  AssetImage _getImage(String imgPath) {
    AssetImage img;
    AssetImage placeholderImg = AssetImage("images/misc/placeholder.png");
    try {
      img = (imgPath != null) ? AssetImage(imgPath): placeholderImg;
    } catch (e) {
      return placeholderImg;
    }
    return img;
  }

  Container _buildContent(context, ClimbingRoute route) {
    return Container(
          height: MediaQuery.of(context).size.height / 2 - _circleSize,
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: SingleChildScrollView(
            padding: EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                SizedBox(height: 16.0),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: _customBoxDecoration(context),
                  child: Text(
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
                SizedBox(height: 16.0),
                //Constrói chip apenas se existir observação
                route.warningNote != null ?
                Chip(
                  label: Text("Observação"),
                  backgroundColor: Colors.deepOrange,
                ) : SizedBox.shrink(),
                Text(route.warningNote ?? "",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(133, 8, 8, 1),
                    height: 1.2
                  ),
                ),
                SizedBox(height: 8.0,),
                Text(route.description ?? "Nenhuma descrição cadastrada",
                  style: TextStyle(
                    fontSize: 18,
                    height: 1.2
                  ),
                )
              ],
            ),

          ),
        );
  }

  ///Define cor do Chip a partir do tipo de via(boulder, esportiva ou trad)
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

  //Neumorphism style decoration
  BoxDecoration _customBoxDecoration(context) {
    return BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: Colors.white30, //borda interna
          width: 0.5,
        ),
        boxShadow: [
          //bottom wide subtle dark shadow
          BoxShadow(
              color: Color.fromRGBO(55, 84, 170, 0.05),
              offset: Offset(30, 30),
              blurRadius: 8.0),
          //upper light shadow
          BoxShadow(
              color: Color.fromRGBO(255, 255, 255, 0.6),
              offset: Offset(-5, -5),
              blurRadius: 8.0),
          //bottom dark shadow
          BoxShadow(
              color: Color.fromRGBO(163, 177, 198, 0.2),
              offset: Offset(9, 9),
              blurRadius: 12.0),
        ]);
  }
}
