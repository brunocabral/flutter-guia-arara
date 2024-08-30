import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:photo_view/photo_view.dart';

final String lat = "-10.709755";
final String lng = "-37.615849";
final Uri urlGoogleMaps = Uri.parse("https://www.google.com/maps/search/?api=1&query=$lat,$lng");

class RoadmapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: const Text("Como Chegar"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 800,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 16.0),
              const Text("São 70km de Aracaju a Macambira, com mais 12 km de terra até o point."),
              const SizedBox(height: 16.0),
              const Text("Seguir pista de asfalto e terra até a Fazenda Capitão."),
              const SizedBox(height: 32.0),
              const Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("(Toque no mapa para dar zoom) "),
                      Icon(Icons.zoom_in)
                    ],
                  )
              ),
              const SizedBox(height: 8.0,),
              Container(
                decoration: _customBoxDecoration(),
                height: 400,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: PhotoView(
                      basePosition: const Alignment(-.5, 1),
                      initialScale: PhotoViewComputedScale.contained * 1.0,
                      minScale: PhotoViewComputedScale.contained * 1.1,
                      maxScale: PhotoViewComputedScale.contained * 2.5,
                      backgroundDecoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      imageProvider: const AssetImage("images/maps/estrada.png")),
                ),
              ),
              const SizedBox(height: 8.0,),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  child: Chip(
                    avatar: Icon(Icons.pin_drop, color: Theme.of(context).primaryColor,),
                    label: const Text("Ver no Maps"),
                    backgroundColor: Colors.white,
                    elevation: 1,
                  ),
                  onTap: () => _launchURL(urlGoogleMaps),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  ///Abre url externa no navegador
///todo: função redundante(também declarada na about_screen) - centralizar
  Future<void> _launchURL(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Não foi possível acessar $url');
    }
  }

  ///Neumorphism style decoration
  BoxDecoration _customBoxDecoration() {
    return BoxDecoration(
      color: const Color.fromRGBO(241, 243, 246, 100),
      borderRadius: BorderRadius.circular(16.0),
      border: Border.all(
        color: Colors.white24, //borda interna
        width: 0.8,
      ),
      boxShadow: [
        const BoxShadow(
            color: Color.fromRGBO(55, 84, 170, 0.05),
            offset: Offset(30, 30),
            blurRadius: 8.0),
        //upper light shadow
        const BoxShadow(
            color: Color.fromRGBO(255, 255, 255, 0.6),
            offset: Offset(-9, -9),
            blurRadius: 8.0),
        //bottom darkshadow
        const BoxShadow(
            color: Color.fromRGBO(163, 177, 198, 0.2),
            offset: Offset(9, 9),
            blurRadius: 12.0),

      ]);
  }
}
