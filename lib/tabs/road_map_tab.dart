import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
//import 'package:photo_view/photo_view.dart';

class RoadmapTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 600,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 16.0),
            Text("São 70km de Aracaju a Macambira, com mais 12 km de terra até o point."),
            SizedBox(height: 16.0),
            Text("Seguir pista de asfalto e terra até a Fazenda Capitão."),
            SizedBox(height: 32.0),
            Container(
              decoration: _customBoxDecoration(),
              height: 400,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: PhotoView(
                  initialScale: PhotoViewComputedScale.contained * 1.1,
                  backgroundDecoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                  imageProvider: AssetImage("images/maps/estrada.png")),
            ),
            )
          ],
        ),
      ),
    );
  }

  ///Neumorphism style decoration
  BoxDecoration _customBoxDecoration() {
    return BoxDecoration(
      color: Color.fromRGBO(241, 243, 246, 100),
      borderRadius: BorderRadius.circular(16.0),
      border: Border.all(
        color: Colors.white24, //borda interna
        width: 0.8,
      ),
      boxShadow: [
        BoxShadow(
            color: Color.fromRGBO(55, 84, 170, 0.05),
            offset: Offset(30, 30),
            blurRadius: 8.0),
        //upper light shadow
        BoxShadow(
            color: Color.fromRGBO(255, 255, 255, 0.6),
            offset: Offset(-9, -9),
            blurRadius: 8.0),
        //bottom darkshadow
        BoxShadow(
            color: Color.fromRGBO(163, 177, 198, 0.2),
            offset: Offset(9, 9),
            blurRadius: 12.0),

      ]);
  }
}
