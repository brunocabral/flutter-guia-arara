///Classe que representa um setor de escalada.
///Cada setor é identificado por um [id] e possui um [name]
class ClimbingSector {

  static const setorJuliano = "Juliano Magalhães";
  static const setorBoulders = "Boulders";
  static const setorNegativos = "Negativos";
  static const setorFissuras = "Fissuras";
  static const setorFenda = "Fenda";
  static const setorEscolinha = "Escolinha";
  static const setorDrone = "Drone";
  static const setorIsoladas = "Isoladas";

  String id;
  String name;

  ClimbingSector({required this.id, required this.name});

  @override
  String toString() {
    return "Setor(id: $id , nome: $name)";
  }
}