
import 'package:flutter/material.dart';
import 'package:guia_arara/screens/home_screen.dart';
import 'package:guia_arara/screens/intro_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splashscreen/splashscreen.dart';

void main() async{
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
    Widget build(BuildContext context) {
      ///'Fake' Splashscreen, widget do package 'splashscreen'
      return MaterialApp(
        home: SplashScreen(
          seconds: 4,
          backgroundColor: Colors.blue,
          navigateAfterSeconds: AfterSplash(), //para onde ir depois
          imageBackground: AssetImage("images/misc/foto.jpg"),
          image: Image.asset("images/misc/logo_capa.png"),
          photoSize: 80,
          loaderColor: Colors.blueAccent,
        ),
      );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Guia Arara',
        theme: ThemeData(
          primaryColor: Color.fromRGBO(5, 117, 230, 1),
          scaffoldBackgroundColor: Color.fromRGBO(224, 229, 236, 1),
        ),
        //Se o app já foi aberto alguma vez, e as telas de Intro foram lidas, pula diretamente para HomeScreen
        home: FutureBuilder<bool>(
          future: _wasAlreadyLaunched(),
          builder: (context, snapshot) {
            Widget home = IntroScreen();
            if (snapshot.hasData) {
              if (snapshot.data) {
                home = HomeScreen();
              }
            }
            return home;
          },
        )
    );
  }

  ///Verifica existência de flag no shared preferences que armazena true
  ///case o app já tenha sido aberto alguma vez
  Future<bool> _wasAlreadyLaunched() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool flag = prefs.get('wasAlreadyLaunched');
    return flag;
  }
}

