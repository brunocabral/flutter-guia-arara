import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _urlInstagram = Uri.parse('https://www.instagram.com/escalacaju/');
final Uri _urlBlog = Uri.parse('http://escalacaju.blogspot.com/');

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: const Text("Sobre"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical:16.0, horizontal: 24.0),
        children: <Widget>[
          Column(
            children: <Widget>[
              const Text("Realização:", style: TextStyle(fontWeight: FontWeight.w600)),
              Container(
                margin: const EdgeInsets.all(24.0),
                padding: const EdgeInsets.all(8.0),
                height: 150,
                width: 200,
                decoration: _customBoxDecoration(context),
                child: Image.asset("images/misc/logo_capa.png", fit: BoxFit.scaleDown),
              ),
              const Text("Baseado em dados de", style: TextStyle(fontWeight: FontWeight.w600)),
              const Text("Nov/2019", ),
              const SizedBox(height: 16.0),
              const Text("Desenvolvimento do app", style: TextStyle(fontWeight: FontWeight.w600)),
              const Text("Bruno Cabral", ),
              const SizedBox(height: 16.0),
              const Text("Descritivos", style: TextStyle(fontWeight: FontWeight.w600)),
              const Text("George Hamilton, Emerson, Gabriel Bernardo"
                  "\nBruno Cabral, Gabriela Menezes, Tilak Müller.", textAlign: TextAlign.justify,),
              const SizedBox(height: 16.0),
              const Text("Elaboração Gráfica", style: TextStyle(fontWeight: FontWeight.w600)),
              const Text("Ramon Ribeiro, Bruno Cabral", ),
              const SizedBox(height: 16.0),
              const Text("Elaboração Geral", style: TextStyle(fontWeight: FontWeight.w600)),
              const Text("Escalacaju"),
              const SizedBox(height: 16.0),
              const Divider(),
              const SizedBox(height: 16.0),
              const Text("Mais informações sobre o Escalacaju e/ou do point da Arara:", style: TextStyle(fontWeight: FontWeight.w600)),
              const SizedBox(height: 16.0),
              ListTile(
                title: const Row(
                  children: <Widget>[
                    Text("Instagram ", style: TextStyle(color: Colors.blue),),
                    Icon(Icons.launch, size: 16,)
                  ],
                ),
                onTap: () => _launchURL(_urlInstagram),
              ),
              ListTile(
                title: const Row(
                  children: <Widget>[
                    Text("Blogspot ", style: TextStyle(color: Colors.blue),),
                    Icon(Icons.launch, size: 16,)
                  ],
                ),
                onTap: () => _launchURL(_urlBlog),
              ),
              // Text("Gostou do app? Contribua com um cafézinho :)", style: TextStyle(fontWeight: FontWeight.w600)),
              // Padding(
              //   padding: EdgeInsets.all(16.0),
              //   child: GestureDetector(
              //     child: Image.asset(
              //       "images/misc/apoiase.png",scale: 4.0,
              //     ),
              //     onTap: () => _launchURL("https://apoia.se/appguiadaarara"),
              //   ),
              // )
            ],
          ),
        ],
      ),
    );

  }

  ///Abre url externa no navegador
  Future<void> _launchURL(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Não foi possível acessar $url');
    }
  }

  ///Neumorphism style decoration
  BoxDecoration _customBoxDecoration(BuildContext context) {
    return BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: Colors.white24, //borda interna
          width: 0.6,
        ),
        boxShadow: const [
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


