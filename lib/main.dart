
import 'package:flutter/material.dart';
import 'package:guia_arara/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.deepOrangeAccent,
        scaffoldBackgroundColor: Color.fromRGBO(224, 229, 236, 1),
      ),
      home: HomeScreen()
    );
  }
}

