
import 'package:flutter/material.dart';
import 'package:guia_arara/screens/home_screen.dart';
import 'package:guia_arara/screens/intro_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //root of application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guia Arara',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(5, 117, 230, 1),
        scaffoldBackgroundColor: Color.fromRGBO(224, 229, 236, 1),
      ),
      //Se o app já foi aberto alguma vez, e as telas de introdução foram lidas, pula diretamente para HomeScreen
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
}

Future<bool> _wasAlreadyLaunched() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //Retorna checando se existe flag no shared preferences
  bool flag = prefs.get('wasAlreadyLaunched');
  return flag;
}