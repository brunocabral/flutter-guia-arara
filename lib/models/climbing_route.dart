import 'package:guia_arara/models/climbing_sector.dart';

///Classe que representa uma Via de escalada.
///Cada via é identificada por um [id] e possui um [name] e um [grade](dificuldade)
///e uma [img] para identificação visual da linha.
///Toda via pertence a um [ClimbingSector].
class ClimbingRoute {

  static const boulderType = "Boulder";
  static const sportType = "Esportiva";
  static const tradType = "Tradicional";

  String id;
  String name;
  String type;
  String grade;
  String description;
  String imgPath;
  ClimbingSector sector; //foreign key

  ClimbingRoute({this.id, this.name, this.type, this.grade, this.description, this.imgPath, this.sector});

  @override
  String toString() {
    return "Via(id: $id , nome: $name, graduaçâo: $grade, setor:${sector.name}, img: $imgPath )";
  }
}