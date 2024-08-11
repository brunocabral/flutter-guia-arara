import 'package:guia_arara/models/climbing_sector.dart';

///Classe que representa uma Via de escalada.
///Cada via é identificada por um [id] e possui um [name] e um [grade](dificuldade)
///e uma [img] para identificação visual da linha.
///Toda via pertence a um [ClimbingSector] (Setor de escalada).
class ClimbingRoute {

  static const boulderType = "Boulder";
  static const sportType = "Esportiva";
  static const tradType = "Tradicional";

  String id;
  String name;
  String type;
  String grade;
  String? description;

  ///Descrição adicional que necessite informar sobre a via
  String? warningNote;

  String imgPath;
  ClimbingSector sector;

  ClimbingRoute({
    required this.id,
    required this.name,
    required this.type,
    required this.grade,
    this.description,
    this.warningNote,
    required this.imgPath,
    required this.sector
  });

  @override
  String toString() {
    return "Via(id: $id , nome: $name, graduaçâo: $grade, setor:${sector.name}, img: $imgPath )";
  }
}