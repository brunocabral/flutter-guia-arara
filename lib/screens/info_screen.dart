
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:guia_arara/tiles/info_tile.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: const Text("Orientações"),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.white24,
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                        height: 240,
                        child: Image(image: AssetImage("images/misc/capa_detail.png"),fit: BoxFit.scaleDown,)),
                    const Text(
                      "Segurança",
                      style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: "RobotoMono",
                          fontWeight: FontWeight.bold,
                          backgroundColor: Colors.yellow,
                          color: Colors.black87
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    CustomInfoTile(
                        text: "A escalada em rocha é uma atividade inerentemente perigosa que pode resultar em graves ferimentos ou até em morte.",
                        iconData: FontAwesomeIcons.userInjured
                    ),
                    const SizedBox(height: 16.0),
                    CustomInfoTile(
                        text: "Para sua segurança pessoal, não dependa exclusivamente de "
                            "nenhuma informação obtida deste aplicativo. Não nos responsabilizamos "
                            "ou oferecemos quaisquer garantias referentes a todo o conteúdo do "
                            "mesmo.",
                        iconData: Icons.close
                    ),
                    const SizedBox(height: 16.0),
                    CustomInfoTile(
                        text: "O uso do capacete é sempre recomendado , mesmo para quem não está escalando no momento, "
                            "já que sempre há o risco de soltura de fragmentos vindo de cima.",
                        iconData: FontAwesomeIcons.helmetSafety
                    ),
                    const SizedBox(height: 16.0),
                    CustomInfoTile(
                        text: "Procure seguir e revisar sempre todos os procedimentos de segurança "
                            "para que os riscos sejam reduzidos.",
                        iconData: FontAwesomeIcons.thumbsUp
                    ),
                    const SizedBox(height: 16.0),
                    CustomInfoTile(
                        text: "A sua segurança depende do seu próprio julgamento, "
                            "baseado numa instrução competente, experiência e conhecimento da sua real "
                            "habilidade em escalar (seu limite).",
                        iconData: FontAwesomeIcons.brain
                    ),
                    const SizedBox(height: 16.0),
                    CustomInfoTile(
                        text: "Este guia não é um substituto para um instrutor ou guia de escalada "
                            "em rocha. Caso você não conheça ou possua dúvidas em relação às "
                            "técnicas de segurança necessárias para realizar um escalada, procure "
                            "um instrutor ou guia especializado.",
                        iconData: FontAwesomeIcons.circleQuestion
                    ),
                    const SizedBox(height: 16.0),
                    const Text(
                      "Ética e Meio Ambiente",
                      style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: "RobotoMono",
                          fontWeight: FontWeight.bold,
                          backgroundColor: Colors.green,
                          color: Colors.black87
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    CustomInfoTile(
                        text: "Mantenha trilhas e montanhas limpas, trazendo sempre seu lixo de volta.",
                        iconData: FontAwesomeIcons.trashCan
                    ),
                    const SizedBox(height: 16.0),
                    CustomInfoTile(
                        text: "Evite barulho desnecessário, "
                            "não alimente e nem pertube os animais silvestres, sempre que possível",
                        iconData: FontAwesomeIcons.spider
                    ),
                    const SizedBox(height: 16.0),
                    CustomInfoTile(
                        text: "Já existem acessos às todas as áreas de escalada, portanto não abra novas trilhas.",
                        iconData: FontAwesomeIcons.route
                    ),
                    const SizedBox(height: 16.0),
                    CustomInfoTile(
                        text: "Durante a escalada e o rappel faça o máximo possível para reduzir "
                            "danos sobre a vegetação.",
                        iconData: FontAwesomeIcons.tree
                    ),
                    const SizedBox(height: 16.0),
                    CustomInfoTile(
                        text: "Lembre-se: A principal regra é o mínimo impacto. Não coloque "
                            "grampos exagerados.",
                        iconData: Icons.bubble_chart
                    ),
                    const SizedBox(height: 16.0),
                    CustomInfoTile(
                        text: "Resolva os movimentos da via limpando e deixando a via mais segura, "
                            "evitando ao máximo colar ou cavar agarras.",
                        iconData: FontAwesomeIcons.check
                    ),
                    const SizedBox(height: 16.0),
                    CustomInfoTile(
                        text: "Não altere o padrão de proteção das vias de escalada sem a "
                            "autorização dos conquistadores.",
                        iconData: Icons.not_interested
                    ),
                    const SizedBox(height: 16.0),
                    CustomInfoTile(
                        text: "Respeite os moradores locais e proprietários das terras, peça permissão "
                            "para entrar e aceite suas condições.",
                        iconData: FontAwesomeIcons.handshake
                    ),
                    const SizedBox(height: 16.0),
                    Align(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        onPressed: () {
                            Navigator.pop(context);
                          },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(5, 117, 230, 1)
                        ),
                          child: const Text(
                            "Entendi!",
                            style: TextStyle(
                              color: Colors.white
                            ),
                          )
                      )
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}
