
import 'package:flutter/material.dart';
import 'package:guia_arara/screens/home_screen.dart';
import 'package:guia_arara/screens/intro_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guia Arara',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(5, 117, 230, 1),
        scaffoldBackgroundColor: Color.fromRGBO(224, 229, 236, 1),
      ),
      home: IntroScreen()
    );
  }
}

