import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ClimbmapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: Text("Mapa Local"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 600,
          padding: const EdgeInsets.symmetric(horizontal:16.0, vertical: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 16.0),
              Text("Nas duas travessias de rio, a altura da água varia normalmente "
                  "entre 20 ~ 60 cm de altura"),
              SizedBox(height: 32.0),
              Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("(Toque no mapa para dar zoom) "),
                      Icon(Icons.zoom_in)
                    ],
                  )
              ),
              SizedBox(height: 8.0,),
              Container(
                decoration: _customBoxDecoration(),
                height: 400,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: PhotoView(
                      initialScale: PhotoViewComputedScale.contained * 1,
                      minScale: PhotoViewComputedScale.contained * 1,
                      maxScale: PhotoViewComputedScale.contained * 2.5,
                      backgroundDecoration: BoxDecoration(color: Colors.white),
                      imageProvider: AssetImage("images/maps/croqui.png")
                  ),
                ),
              ),
              SizedBox(height: 8.0),
            ],
          ),
        ),
      ),
    );
  }

  ///Neumorphism style decoration
  BoxDecoration _customBoxDecoration() {
    return BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: Colors.white24, //borda interna
          width: 0.6,
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
