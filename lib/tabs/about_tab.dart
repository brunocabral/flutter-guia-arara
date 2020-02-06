import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical:16.0, horizontal: 24.0),
      children: <Widget>[
        Column(
          children: <Widget>[
            Text("Realização:", style: TextStyle(fontWeight: FontWeight.w600)),
            Container(
              margin: EdgeInsets.all(24.0),
              padding: EdgeInsets.all(8.0),
              height: 150,
              width: 200,
              decoration: _customBoxDecoration(context),
              child: Image.asset("images/misc/logo_capa.png", fit: BoxFit.scaleDown),
            ),
            Text("Desenvolvimento do app", style: TextStyle(fontWeight: FontWeight.w600)),
            Text("Bruno Cabral", ),
            SizedBox(height: 16.0),
            Text("Descritivos", style: TextStyle(fontWeight: FontWeight.w600)),
            Text("George Hamilton, Emerson, Gabriel Bernardo"
                "\nBruno Cabral, Gabriela Menezes, Tilak Müller.", textAlign: TextAlign.justify,),
            SizedBox(height: 16.0),
            Text("Elaboração Gráfica", style: TextStyle(fontWeight: FontWeight.w600)),
            Text("Ramon Ribeiro, Bruno Cabral", ),
            SizedBox(height: 16.0),
            Text("Elaboração Geral", style: TextStyle(fontWeight: FontWeight.w600)),
            Text("Escalacaju"),
            SizedBox(height: 16.0),
            Divider(),
            SizedBox(height: 16.0),
            Text("Mais informações sobre o Escalacaju e/ou do point da Arara:", style: TextStyle(fontWeight: FontWeight.w600)),
            SizedBox(height: 16.0),
            ListTile(
              title: Row(
                children: <Widget>[
                  Text("Instagram ", style: TextStyle(color: Colors.blue),),
                  Icon(Icons.launch, size: 16,)
                ],
              ),
              onTap: () => _launchURL("https://www.instagram.com/escalacaju/"),
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Text("Blogspot ", style: TextStyle(color: Colors.blue),),
                  Icon(Icons.launch, size: 16,)
                ],
              ),
              onTap: () => _launchURL("http://escalacaju.blogspot.com/"),
            )
          ],
        ),
      ],
    );
  }

  ///Abre url externa no navegador
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Não foi possível acessar: $url';
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


