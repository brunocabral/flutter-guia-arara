
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
    setores = _createClimbingSectors();
    vias = _createClimbingRoutes(setores);
  }

  ClimbingSector _getSetorByName(String name){
    return setores.firstWhere((setor) => setor.name == name);
  }

  ///Retorna todas as vias do setor, pelo nome do setor
  List<ClimbingRoute> getAllRoutesBySector(String sectorName) {
    return vias.where((route) => route.sector.name == sectorName).toList();
  }

  List<ClimbingSector> _createClimbingSectors() {
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

  List<ClimbingRoute> _createClimbingRoutes(List<ClimbingSector> sectors) {
    List<ClimbingRoute> vias = List<ClimbingRoute>();
    //######### Vias do Juliano Magalhães ######################################
    vias.add(
      ClimbingRoute(id: "01",
        name: "Vovó",
        type: ClimbingRoute.boulderType,
        grade: "V1",
        sector: _getSetorByName(ClimbingSector.setorJuliano),
        imgPath: dirImagesJuliano + "juliano1.jpg",
        description: "Linha com 3 movimentos e finalizando com um bote. "
            "\nExcelente exercício de bote para os iniciantes."
      )
    );
    vias.add(
      ClimbingRoute(
        id: "02",
        name: "Aracnoarara",
        type: ClimbingRoute.boulderType,
        grade: "V3",
        sector: _getSetorByName(ClimbingSector.setorJuliano),
        imgPath: dirImagesJuliano + "juliano1.jpg",
        description: "Sua saída inicia em um reglete partindo para mais um reglete, finalizando com um bote."
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
        imgPath: dirImagesJuliano + "juliano2.jpg",
        description: "Via de posicionamento de pés e leve negatividade. Ótima via para iniciantes.",
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
        imgPath: dirImagesJuliano + "juliano2.jpg",
        description: "Via identificada pela frase anônima escrita na base da via. Saída relativamente dura e depois "
              "segue por uma fenda horizontal."
      )
    );
    //##########################################################################

    //################### VIAS SETOR BOULDERS ##################################

    vias.add(
      ClimbingRoute(
        id: "10",
        name: "Desejo Secreto",
        type: ClimbingRoute.sportType,
        grade: "8ºA",
        sector: _getSetorByName(ClimbingSector.setorBoulders),
        imgPath: dirImagesBoulders + "sacaninha-desejo.jpg",
        description: "Via com movimentos “boulderísticos”. Ao final, o bote valoriza aqueles que guiarem."
      )
    );
    vias.add(
      ClimbingRoute(
        id: "11",
        name: "Sacaninha",
        type: ClimbingRoute.sportType,
        grade: "5º Sup",
        sector: _getSetorByName(ClimbingSector.setorBoulders),
        imgPath: dirImagesBoulders + "sacaninha-desejo.jpg",
        description: "O nome diz tudo. Linha inicialmente fácil que apresenta uma pegada técnica ao final."
      )
    );
    //##########################################################################

    //################### VIAS SETOR NEGATIVOS #################################
    vias.add(
      ClimbingRoute(
        id: "01",
        name: "Arara Voadora",
        type: ClimbingRoute.sportType,
        grade: "6º",
        sector: _getSetorByName(ClimbingSector.setorNegativos),
        imgPath: dirImagesNegativos + "negativos.jpg",
        description: "Sequência de batentes e posicionamentos com o calcanhar"
      )
    );
    vias.add(
      ClimbingRoute(
        id: "02",
        name: "Canela",
        type: ClimbingRoute.sportType,
        grade: "6º",
        sector: _getSetorByName(ClimbingSector.setorNegativos),
        imgPath: dirImagesNegativos + "negativos.jpg",
        description: "Sua saída inicia em um reglete partindo para mais um reglete, finalizando com um bote."
      )
    );
    vias.add(
      ClimbingRoute(
        id: "03",
        name: "Arara Suicida",
        type: ClimbingRoute.boulderType,
        grade: "V6",
        sector: _getSetorByName(ClimbingSector.setorNegativos),
        imgPath: dirImagesNegativos + "negativos.jpg",
        description: "Ela está entre a Arara Voadora e a da Canela. Sua saída exige força. "
            "\nSeus movimentos são alongados e corajosos. "
            "\nÉ um excelente desafio"
      )
    );
    vias.add(
      ClimbingRoute(
        id: "04",
        name: "Teoria do Caos",
        type: ClimbingRoute.sportType,
        grade: "4º",
        sector: _getSetorByName(ClimbingSector.setorNegativos),
        imgPath: dirImagesNegativos + "negativos.jpg",
        description: "Via perfeita para iniciantes treinarem Top Rope e iniciarem nas vias guiadas."
      )
    );
    vias.add(
      ClimbingRoute(
        id: "05",
        name: "Eta Cara%!",
        type: ClimbingRoute.sportType,
        grade: "6º",
        sector: _getSetorByName(ClimbingSector.setorNegativos),
        imgPath: dirImagesNegativos + "negativos.jpg",
        description: "Linha que se inicia em um negativo que exige domínio para entrada na parede. "
            "\nDepois, segue por boas agarras, finalizando num bote."
      )
    );
    vias.add(
      ClimbingRoute(
        id: "06",
        name: "Sem Saída",
        type: ClimbingRoute.sportType,
        grade: "8º",
        sector: _getSetorByName(ClimbingSector.setorNegativos),
        imgPath: dirImagesNegativos + "negativos.jpg",
        description: "Via de difícil leitura. Possui movimentos alongados e de força logo no negativo da saída.",
        warningNote: "Saia utilizando as duas proteções fixas do início para evitar o fator 2 e choques "
          "entre o escalador e o segurança em caso de queda."
      )
    );
    vias.add(
      ClimbingRoute(
        id: "07",
        name: "Jacaré",
        type: ClimbingRoute.sportType,
        grade: "7ºb",
        sector: _getSetorByName(ClimbingSector.setorNegativos),
        imgPath: dirImagesNegativos + "negativos.jpg",
        description: "Via com saída técnica. Depois segue por sequência de agarras boas. "
            "\nEsta via é bem completa, pois possui passadas de equilíbrio, regletes, batentes, pinça e bote."
      )
    );
    vias.add(
      ClimbingRoute(
        id: "08",
        name: "Côco Seco Molhado",
        type: ClimbingRoute.sportType,
        grade: "8ºa",
        sector: _getSetorByName(ClimbingSector.setorNegativos),
        imgPath: dirImagesNegativos + "negativos.jpg",
        description: "Linha óbvia com uma sequência de agarras grandes e médias. "
            "\nExcelente linha para ser feita à vista."
      )
    );
    vias.add(
      ClimbingRoute(
        id: "09",
        name: "Bombástica",
        type: ClimbingRoute.sportType,
        grade: "8ºb",
        sector: _getSetorByName(ClimbingSector.setorNegativos),
        imgPath: dirImagesNegativos + "negativos.jpg",
        description: "Uma das linhas mais interessantes da Arara. "
            "\nFica localizada em um tipo de gruta, sua saída se dá do fundo e seguindo por uma laca de teto gigante com boas pegas."
            "\nApós, realiza-se a virada para o negativo, seguindo por agarras e batentes até o final.",
        warningNote: "Saia utilizando as duas proteções fixas do início para evitar o fator 2 e choques "
            "entre o escalador e o segurança em caso de queda."

      )
    );
    vias.add(
      ClimbingRoute(
        id: "10",
        name: "Introdução Sexual",
        type: ClimbingRoute.sportType,
        grade: "8ºb",
        sector: _getSetorByName(ClimbingSector.setorNegativos),
        imgPath: dirImagesNegativos + "negativos.jpg",
        description: "Saída em teto e forte seguida por bidedos em uma escalada mais técnica"
            " até um grande platô, logo depois vem um trecho fácil, mas bem sujo."
            "\nVia alucinante do negativo!"
      )
    );
    vias.add(
      ClimbingRoute(
        id: "11",
        name: "Caninana",
        type: ClimbingRoute.sportType,
        grade: "6º Sup",
        sector: _getSetorByName(ClimbingSector.setorNegativos),
        description: "Via negativa ótima para ser feita à vista."
      )
    );
    //##########################################################################

    //################### VIAS SETOR FISSURAS ##################################
    vias.add(
      ClimbingRoute(
        id: "01",
        name: "Diedro da Gota Serena",
        type: ClimbingRoute.sportType,
        grade: "7a",
        sector: _getSetorByName(ClimbingSector.setorFissuras),
        description: "Via com duas linhas possíveis de escalar, sendo que pelo diedro o grau é mais forte."
      )
    );
    vias.add(
      ClimbingRoute(
        id: "02",
        name: "Homem do caos",
        type: ClimbingRoute.sportType,
        grade: "8a",
        sector: _getSetorByName(ClimbingSector.setorFissuras),
        imgPath: dirImagesFissuras + "homemcaos.jpg",
      )
    );
    vias.add(
      ClimbingRoute(
        id: "03",
        name: "Platô pra lá (Esquerda)",
        type: ClimbingRoute.sportType,
        grade: "6º",
        sector: _getSetorByName(ClimbingSector.setorFissuras),
        imgPath: dirImagesFissuras + "platos-toflow.jpg",
        description: "Via com saída negativa de força em regletes até o Platô."
            "\nPara esquerda via positiva e de equilíbrio em pequenos regletes."
      )
    );
    vias.add(
      ClimbingRoute(
        id: "04",
        name: "Platô pra cá (Direita)",
        type: ClimbingRoute.sportType,
        grade: "7a",
        sector: _getSetorByName(ClimbingSector.setorFissuras),
        imgPath: dirImagesFissuras + "platos-toflow.jpg",
        description: "Via com saída negativa de força em regletes até o Platô."
            "\nPara direita, linha de fenda até a parada."
      )
    );
    vias.add(
      ClimbingRoute(
        id: "05",
        name: "To Flow to Fly",
        type: ClimbingRoute.sportType,
        grade: "7b",
        sector: _getSetorByName(ClimbingSector.setorFissuras),
        imgPath: dirImagesFissuras + "platos-toflow.jpg",
        description: "Via bastante interessante para escaladores que pretendem treinar escalada à vista. "
            "\nPossui bidedo, oposições, regletes e pinça."
      )
    );
    vias.add(
      ClimbingRoute(
        id: "06",
        name: "Tatuíra",
        type: ClimbingRoute.sportType,
        grade: "7b",
        sector: _getSetorByName(ClimbingSector.setorFissuras),
        imgPath: dirImagesFissuras + "tatuira.jpg",
        description: "Linha composta por regletes. É simples e objetiva"
      )
    );
    vias.add(
      ClimbingRoute(
        id: "07",
        name: "Araramandinha",
        type: ClimbingRoute.sportType,
        grade: "5º",
        sector: _getSetorByName(ClimbingSector.setorFissuras),
        imgPath: dirImagesFissuras + "araramandinha-pedra_solta.jpg",
        description: "Via para iniciantes que desejam treinar as primeiras guiadas."
            "\nApresenta regletes e uma fissura que permite treinar posicionamento."
      )
    );
    vias.add(
      ClimbingRoute(
        id: "08",
        name: "Pedra Solta",
        type: ClimbingRoute.sportType,
        grade: "6º",
        sector: _getSetorByName(ClimbingSector.setorFissuras),
        imgPath: dirImagesFissuras + "araramandinha-pedra_solta.jpg",
        description: "Sua negatividade exige bom posicionamento do escalador e uma boa leitura."
            "\nEsta via permite extensão."
      )
    );
    vias.add(
      ClimbingRoute(
        id: "09",
        name: "3F",
        type: ClimbingRoute.sportType,
        grade: "8c",
        sector: _getSetorByName(ClimbingSector.setorFissuras),
        imgPath: dirImagesFissuras + "3f-acai-tork-donzela.jpg",
      )
    );
    vias.add(
      ClimbingRoute(
        id: "10",
        name: "Vale um açaí",
        type: ClimbingRoute.sportType,
        grade: "8b",
        sector: _getSetorByName(ClimbingSector.setorFissuras),
        imgPath: dirImagesFissuras + "3f-acai-tork-donzela.jpg",
        description: "Via bem técnica e de movimentos diferentes,"
            "\nreza a lenda que quem a encadena recebe um açaí do seg."
      )
    );
    vias.add(
      ClimbingRoute(
        id: "11",
        name: "Torque Diabólico",
        type: ClimbingRoute.sportType,
        grade: "8a",
        sector: _getSetorByName(ClimbingSector.setorFissuras),
        imgPath: dirImagesFissuras + "3f-acai-tork-donzela.jpg",
        description: "Via negativa de força em agarrões e regletes nos crux."
            "\nBem protegida, com uma extensão de 2 corpos após a passagem do tetinho."
      )
    );
    vias.add(
      ClimbingRoute(
        id: "12",
        name: "Arara Donzela",
        type: ClimbingRoute.sportType,
        grade: "7a",
        sector: _getSetorByName(ClimbingSector.setorFissuras),
        imgPath: dirImagesFissuras + "3f-acai-tork-donzela.jpg",
        description: "Uma das vias clássicas de Arara. Na primeira parte uma linha vertical "
            "de 8m em regletes até um grampo rapelável. "
            "\nSegunda parte segue por um lado, mas visando alcançar o outro. "
            "Se não achar agarra, dá um sorrisinho."
            "\nObservação ! Ela está só com um P no final. Também atenção ao possível pêndulo!"
      )
    );
    //##########################################################################

    //################### VIAS SETOR FENDA ##################################
    vias.add(
      ClimbingRoute(
        id: "01",
        name: "Piriquita Acidentada",
        type: ClimbingRoute.sportType,
        grade: "7a",
        sector: _getSetorByName(ClimbingSector.setorFenda),
        imgPath: dirImagesFenda + "piriquita.jpg",
        description: "Uma das vias mais fotogênicas da Arara. "
            "\nA segunda parte é uma linha vertical de aproximadamente uns 20m com boa sequência de agarras e bem protegida."
            "\nObservação ! - A primeira proteção fixa está aproximadamente a 10m de altura em escalada livre positiva até uma parada dupla no platô. "
            "\nExistem fendas para entalamento de móveis de número 4 e 2."
      )
    );
    vias.add(
      ClimbingRoute(
        id: "02",
        name: "Marajá",
        type: ClimbingRoute.sportType,
        grade: "7a",
        sector: _getSetorByName(ClimbingSector.setorFenda),
        imgPath: dirImagesFenda + "maraja-courocobra.jpg",
        description: "Via de saída positiva e sequência vertical em regletes até a parada dupla em 25m."
      )
    );
    vias.add(
      ClimbingRoute(
        id: "03",
        name: "Couro de Cobra",
        type: ClimbingRoute.sportType,
        grade: "5º / 7a**",
        sector: _getSetorByName(ClimbingSector.setorFenda),
        imgPath: dirImagesFenda + "maraja-courocobra.jpg",
        description: "Via positiva clássica do setor, é bem protegida. Nos primeiros 30m é 5º grau."
            "\nA segunda enfiada** (“parte 2”) são mais uns 20m na diagonal de 7º grau em regletes bem pequenos. "
            "\nRapel em corda dupla.",
        warningNote: "Apenas por prevenção, antes de escalar é recomendado dar uma olhada se existe"
          "a presença de marimbondos/abelhas na árvore que está bem encostada na base da via."
      )
    );
    //##########################################################################

    //################### VIAS SETOR ESCOLINHA ##################################
    vias.add(
      ClimbingRoute(
        id: "01",
        name: "Aerolitos",
        type: ClimbingRoute.sportType,
        grade: "4º Sup",
        sector: _getSetorByName(ClimbingSector.setorEscolinha),
        imgPath: dirImagesEscolinha + "aerolitos.jpg",
        description: "Via clássica do setor, de 30m e parada num balcão confortável. "
            "\nLinha positiva bem protegida numa sequência de positivo platô. "
            "\nPequeno crux antes da parada"
            "\nObservação ! - Cuidado com as agarras voadoras! (soltas)."
      )
    );
    vias.add(
      ClimbingRoute(
        id: "02*",
        name: "Primário",
        type: ClimbingRoute.sportType,
        grade: "4º Sup**",
        sector: _getSetorByName(ClimbingSector.setorEscolinha),
        imgPath: dirImagesEscolinha + "primario.jpg",
        description: "Via positiva consolidada até o grampo, a partir daí a via não está limpa e não tem cadena.",
        warningNote: "A via encontra-se, até o momento, muita suja e com possíveis agarras “semi soltas”, "
            "quem decidir escalá-la requer atenção redobrada (e pro seg!)."
      )
    );
    vias.add(
      ClimbingRoute(
        id: "03",
        name: "Bolas de Porco Espinho",
        type: ClimbingRoute.sportType,
        grade: "5º",
        sector: _getSetorByName(ClimbingSector.setorEscolinha),
        imgPath: dirImagesEscolinha + "bolas-secundario.jpg",
        description: "Siga pela fenda ou à esquerda dela.",
        warningNote: "Cuidado para preservar o único cabeça de frade (cacto) "
            "restante que simboliza o início da via : )"
      )
    );
    vias.add(
      ClimbingRoute(
        id: "04",
        name: "Secundário",
        type: ClimbingRoute.sportType,
        grade: "4º",
        sector: _getSetorByName(ClimbingSector.setorEscolinha),
        imgPath: dirImagesEscolinha + "bolas-secundario.jpg",
        description: "Via de aquecimento com 15m, leve diagonal e boas agarras."
      )
    );
    vias.add(
      ClimbingRoute(
        id: "05",
        name: "Desafio",
        type: ClimbingRoute.sportType,
        grade: "7c",
        sector: _getSetorByName(ClimbingSector.setorEscolinha),
        imgPath: dirImagesEscolinha + "desafio.jpg",
        description: "Via com saída positiva até uma passada de teto de bastante força. "
            "\nSequência negativa num diedro bem protegido onde é possível descansar as mãos. "
            "\nParte final vertical com poucas opções de agarras até a parada."
      )
    );

    //##########################################################################

    //################### VIAS SETOR DRONE #####################################
    vias.add(
      ClimbingRoute(
        id: "01",
        name: "Caramujo",
        type: ClimbingRoute.sportType,
        grade: "6º",
        sector: _getSetorByName(ClimbingSector.setorDrone),
        imgPath: dirImagesDrone + "drone.jpg",
        description: "Via de saída de força e virada de boulder."
            "\nBoa sequência de agarras à direita das chapas. Boa para ser feita à vista."
      )
    );
    vias.add(
      ClimbingRoute(
        id: "02",
        name: "Cavalo do Cão",
        type: ClimbingRoute.sportType,
        grade: "7c",
        sector: _getSetorByName(ClimbingSector.setorDrone),
        imgPath: dirImagesDrone + "drone.jpg",
      )
    );
    vias.add(
      ClimbingRoute(
        id: "03",
        name: "Projeto",
        type: ClimbingRoute.sportType,
        grade: "Projeto",
        sector: _getSetorByName(ClimbingSector.setorDrone),
        imgPath: dirImagesDrone + "drone.jpg",
      )
    );

    //##########################################################################

    //################### VIAS - ISOLADAS ######################################
    vias.add(
      ClimbingRoute(
        id: "01",
        name: "Escureto Aberto vira Oreo",
        type: ClimbingRoute.sportType,
        grade: "Projeto",
        sector: _getSetorByName(ClimbingSector.setorIsoladas),
        imgPath: dirImagesIsoladas + "escureto.jpg",
      )
    );
    vias.add(
      ClimbingRoute(
        id: "--",
        name: "Capelinha",
        type: ClimbingRoute.sportType,
        grade: "Projeto",
        sector: _getSetorByName(ClimbingSector.setorIsoladas),
        imgPath: null,
      )
    );
    //##########################################################################
    return vias;
  }
  

}