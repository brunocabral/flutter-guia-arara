import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:guia_arara/tiles/info_tile.dart';

class InfoTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Theme.of(context).primaryColor,
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                floating: true,
                snap: true, //puxa pra baixo some, volta pra cima reaparece
                backgroundColor: Theme.of(context).primaryColor,
                elevation: 0.0,
                flexibleSpace: FlexibleSpaceBar(
                  title: const Text("Orientações básicas"),
                  centerTitle: true,
                ),
              ),
              SliverToBoxAdapter(
                  child: SingleChildScrollView(
                    child: Container(
                       padding: EdgeInsets.all(20.0),
                       decoration: BoxDecoration(
                         color: Colors.black87,
                         image: DecorationImage(
                           alignment: Alignment.topCenter,
                           image: AssetImage("images/misc/foto.jpg"),
                           colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.dstATop),
                           fit: BoxFit.cover
                         )
                       ),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                              height: 320,
                              child: Image(image: AssetImage("images/misc/capa_texto.png"),fit: BoxFit.scaleDown,)),
                          Text(
                            "Segurança",
                            style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: "RobotoMono",
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.yellow,
                                color: Colors.black87
                            ),
                          ),
                          SizedBox(height: 16.0),
                          CustomInfoTile(
                              text: "A escalada em rocha é uma atividade inerentemente perigosa que pode resultar em graves ferimentos ou até em morte.",
                              iconData: FontAwesomeIcons.userInjured
                          ),
                          SizedBox(height: 16.0),
                          CustomInfoTile(
                              text: "Para sua segurança pessoal, não dependa exclusivamente de "
                                  "nenhuma informação obtida deste aplicativo. Não nos responsabilizamos "
                                  "ou oferecemos quaisquer garantias referentes a todo o conteúdo do "
                                  "mesmo.",
                              iconData: Icons.close
                          ),
                          SizedBox(height: 16.0),
                          CustomInfoTile(
                              text: "O uso do capacete é sempre recomendado , mesmo para quem não está escalando no momento, "
                                  "já que sempre há o risco de soltura de fragmentos vindo de cima.",
                              iconData: FontAwesomeIcons.hardHat
                          ),
                          SizedBox(height: 16.0),
                          CustomInfoTile(
                              text: "Procure seguir e revisar sempre todos os procedimentos de segurança "
                                  "para que os riscos sejam reduzidos.",
                              iconData: FontAwesomeIcons.thumbsUp
                          ),
                          SizedBox(height: 16.0),
                          CustomInfoTile(
                              text: "A sua segurança depende do seu próprio julgamento, "
                                  "baseado numa instrução competente, experiência e conhecimento da sua real "
                                  "habilidade em escalar (seu limite).",
                              iconData: FontAwesomeIcons.brain
                          ),
                          SizedBox(height: 16.0),
                          CustomInfoTile(
                              text: "Este guia não é um substituto para um instrutor ou guia de escalada "
                                  "em rocha. Caso você não conheça ou possua dúvidas em relação às "
                                  "técnicas de segurança necessárias para realizar um escalada, procure "
                                  "um instrutor ou guia especializado.",
                              iconData: FontAwesomeIcons.questionCircle
                          ),
                          SizedBox(height: 16.0),
                          Text(
                              "Ética e Meio Ambiente",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: "RobotoMono",
                              fontWeight: FontWeight.bold,
                              backgroundColor: Colors.green,
                              color: Colors.white
                            ),
                          ),
                          SizedBox(height: 16.0),
                          CustomInfoTile(
                              text: "Mantenha trilhas e montanhas limpas, trazendo sempre seu lixo de volta.",
                              iconData: FontAwesomeIcons.trashAlt
                          ),
                          SizedBox(height: 16.0),
                          CustomInfoTile(
                              text: "Evite barulho desnecessário, "
                                  "não alimente e nem pertube os animais silvestres, sempre que possível",
                              iconData: FontAwesomeIcons.spider
                          ),
                          SizedBox(height: 16.0),
                          CustomInfoTile(
                              text: "Já existem acessos às todas as áreas de escalada, portanto não abra novas trilhas.",
                              iconData: FontAwesomeIcons.route
                          ),
                          SizedBox(height: 16.0),
                          CustomInfoTile(
                              text: "Durante a escalada e o rappel faça o máximo possível para reduzir "
                                  "danos sobre a vegetação.",
                              iconData: FontAwesomeIcons.tree
                          ),
                          SizedBox(height: 16.0),
                          CustomInfoTile(
                              text: "Lembre-se: A principal regra é o mínimo impacto. Não coloque "
                                  "grampos exagerados.",
                              iconData: Icons.bubble_chart
                          ),
                          SizedBox(height: 16.0),
                          CustomInfoTile(
                              text: "Resolva os movimentos da via limpando e deixando a via mais segura, "
                                  "evitando ao máximo colar ou cavar agarras.",
                              iconData: FontAwesomeIcons.check
                          ),
                          SizedBox(height: 16.0),
                          CustomInfoTile(
                              text: "Não altere o padrão de proteção das vias de escalada sem a "
                                  "autorização dos conquistadores.",
                              iconData: Icons.not_interested
                          ),
                          SizedBox(height: 16.0),
                          CustomInfoTile(
                              text: "Respeite os moradores locais e proprietários das terras, peça permissão "
                                  "para entrar e aceite suas condições.",
                              iconData: FontAwesomeIcons.handshake
                          ),
                        ],
                      ),
                    ),
                  )
              )
            ],
          )
          ,
        ),

      ],
    );
  }

}
