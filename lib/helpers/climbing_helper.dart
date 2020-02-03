
import 'package:guia_arara/models/climbing_route.dart';
import 'package:guia_arara/models/climbing_sector.dart';

class ClimbingHelper {

  static const String dirImagesJuliano = "images/setores/juliano/";
  static const String dirImagesBoulders = "images/setores/boulders/";
  static const String dirImagesNegativos = "images/setores/negativos/";
  static const String dirImagesFissuras = "images/setores/fissuras/";
  static const String dirImagesFenda = "images/setores/fenda/";
  static const String dirImagesEscolinha= "images/setores/escolinha/";
  static const String dirImagesDrone = "images/setores/drone/";
  static const String dirImagesIsoladas= "images/setores/isoladas/";

  List<ClimbingSector> setores;
  List<ClimbingRoute> vias;

  ClimbingHelper(){
    setores = _createSectors();
    vias = _createRoutes(setores);
  }

  ClimbingSector _getSetorByName(String name){
    return setores.firstWhere((setor) => setor.name == name);
  }
  
  List<ClimbingRoute> getAllRoutesBySector(String sectorName) {
    return vias.where((route) => route.sector.name == sectorName).toList();
  }

  List<ClimbingSector> _createSectors() {
    List<ClimbingSector> sectors = List<ClimbingSector>();
    sectors.add(ClimbingSector(id: "01", name: ClimbingSector.setorJuliano));
    sectors.add(ClimbingSector(id: "02", name: ClimbingSector.setorBoulders));
    sectors.add(ClimbingSector(id: "03", name: ClimbingSector.setorNegativos));
    sectors.add(ClimbingSector(id: "04", name: ClimbingSector.setorFissuras));
    sectors.add(ClimbingSector(id: "05", name: ClimbingSector.setorFenda));
    sectors.add(ClimbingSector(id: "06", name: ClimbingSector.setorEscolinha));
    sectors.add(ClimbingSector(id: "07", name: ClimbingSector.setorDrone));
    sectors.add(ClimbingSector(id: "--", name: ClimbingSector.setorIsoladas));
    return sectors;
  }

  List<ClimbingRoute> _createRoutes(List<ClimbingSector> sectors) {
    List<ClimbingRoute> vias = List<ClimbingRoute>();

    //Vias do Juliano Magalhães
    vias.add(
      ClimbingRoute(id: "01",
        name: "Vovó",
        type: ClimbingRoute.boulderType,
        grade: "V1",
        sector: _getSetorByName(ClimbingSector.setorJuliano),
        imgPath: dirImagesJuliano + "juliano1.jpg"
      )
    );
    vias.add(
      ClimbingRoute(
        id: "02",
        name: "Aracnoarara",
        type: ClimbingRoute.boulderType,
        grade: "V3",
        sector: _getSetorByName(ClimbingSector.setorJuliano),
        imgPath: dirImagesJuliano + "juliano1.jpg"
      )
    );
    vias.add(
      ClimbingRoute(
        id: "03",
        name: "Microarara",
        type: ClimbingRoute.boulderType,
        grade: "Projeto",
        sector: _getSetorByName(ClimbingSector.setorJuliano),
        imgPath: dirImagesJuliano + "juliano1.jpg"
      )
    );
    vias.add(
      ClimbingRoute(
        id: "04",
        name: "Amor de Arara",
        type: ClimbingRoute.boulderType,
        grade:"Projeto",
        sector: _getSetorByName(ClimbingSector.setorJuliano),
        imgPath: dirImagesJuliano + "juliano1.jpg"
      )
    );
    vias.add(
        ClimbingRoute(
            id: "05",
            name: "Bico de Arara",
            type: ClimbingRoute.boulderType,
            grade: "Projeto",
            sector: _getSetorByName(ClimbingSector.setorJuliano),
            imgPath: dirImagesJuliano + "juliano2.jpg"
        )
    );
    vias.add(
        ClimbingRoute(
            id: "06",
            name: "Arara Quebrada",
            type: ClimbingRoute.sportType,
            grade: "5º",
            sector: _getSetorByName(ClimbingSector.setorJuliano),
            imgPath: dirImagesJuliano + "juliano2.jpg"
        )
    );
    vias.add(
        ClimbingRoute(
            id: "07",
            name: "Arara de Carvão",
            type: ClimbingRoute.boulderType,
            grade: "Projeto",
            sector: _getSetorByName(ClimbingSector.setorJuliano),
            imgPath: dirImagesJuliano + "juliano2.jpg"
        )
    );
    vias.add(
        ClimbingRoute(
            id: "08",
            name: "'Nós é Maqonha'",
            type: ClimbingRoute.sportType,
            grade: "7b",
            sector: _getSetorByName(ClimbingSector.setorJuliano),
            imgPath: dirImagesJuliano + "juliano2.jpg"
        )
    );
    return vias;
  }
  

}