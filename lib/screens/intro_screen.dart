import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:guia_arara/screens/home_screen.dart';
import 'package:guia_arara/tiles/info_tile.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title: "OLÁ, ESCALADOR",
        maxLineTitle: 2,
        styleTitle:
        TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold, fontFamily: 'RobotoMono'),
        description: "Este guia é destinado para apoiar a escalada esportiva no point da Pedra da Arara, em Macambira-SE."
            "\n\n Primeiramente, leia com atenção as orientações básicas a seguir!",
        styleDescription: TextStyle(color: Colors.white, fontSize: 20.0, fontStyle: FontStyle.italic, fontFamily: 'Raleway'),
        marginDescription: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 70.0),
        backgroundColor: Colors.green,
        directionColorBegin: Alignment.topLeft,
        directionColorEnd: Alignment.bottomRight,
        onCenterItemPress: () {},
      ),
    );
    slides.add(
      new Slide(
        title: "ATENÇÃO!",
        maxLineTitle: 1,
        styleTitle:
        TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold, fontFamily: 'RobotoMono'),
        widgetDescription: Column(
          children: <Widget>[
            CustomInfoTile(
              text: "A escalada em rocha é uma atividade inerentemente perigosa que pode resultar em graves ferimentos ou até em morte.",
              iconData: FontAwesomeIcons.userInjured,
              iconSize: 40.0,
              textFontSize: 19.0,
            ),
            SizedBox(height: 16.0),
            CustomInfoTile(
              text: "Para sua segurança pessoal, não dependa exclusivamente de "
                  "nenhuma informação obtida deste aplicativo. Não nos responsabilizamos "
                  "ou oferecemos quaisquer garantias referentes a todo o conteúdo do "
                  "mesmo.",
              iconData: Icons.close,
              iconSize: 44.0,
              textFontSize: 19.0,
            ),
            SizedBox(height: 16.0),
            CustomInfoTile(
              text: "O uso do capacete é sempre recomendado , mesmo para quem não está escalando no momento, "
                  "já que sempre há o risco de soltura de fragmentos vindo de cima.",
              iconData: FontAwesomeIcons.hardHat,
              iconSize: 44.0,
              textFontSize: 19.0,
            ),
          ],
        ),
        marginDescription: EdgeInsets.only(left: 20.0, right: 15.0, top: 20.0, bottom: 70.0),
        backgroundColor: Colors.blue,
        onCenterItemPress: () {},
      ),
    );
    slides.add(
      new Slide(
        title: "ATENÇÃO!",
        maxLineTitle: 1,
        styleTitle:
        TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold, fontFamily: 'RobotoMono'),
        widgetDescription: Column(
          children: <Widget>[
            SizedBox(height: 16.0),
            CustomInfoTile(
              text: "Procure seguir e revisar sempre todos os procedimentos de segurança "
                  "para que os riscos sejam reduzidos.",
              iconData: FontAwesomeIcons.thumbsUp,
              iconSize: 44.0,
              textFontSize: 19.0,
            ),
            SizedBox(height: 16.0),
            CustomInfoTile(
              text: "A sua segurança depende do seu próprio julgamento, "
                  "baseado numa instrução competente, experiência e conhecimento da sua real "
                  "habilidade em escalar (seu limite).",
              iconData: FontAwesomeIcons.brain,
              iconSize: 44.0,
              textFontSize: 19.0,
            ),
            SizedBox(height: 16.0),
            CustomInfoTile(
              text: "Este guia não é um substituto para um instrutor ou guia de escalada "
                  "em rocha. Caso você não conheça ou possua dúvidas em relação às "
                  "técnicas de segurança necessárias para realizar um escalada, procure "
                  "um instrutor ou guia especializado.",
              iconData: FontAwesomeIcons.questionCircle,
              iconSize: 44.0,
              textFontSize: 19.0,
            ),
          ],
        ),
        marginDescription: EdgeInsets.only(left: 20.0, right: 15.0, top: 20.0, bottom: 70.0),
        backgroundColor: Colors.deepOrange,
        onCenterItemPress: () {},
      ),
    );
  }

  void onDonePress() {
    ///TOD - Shared Preferences - não repetir tela depois da 1a vez
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }

  Widget renderNextBtn() {
    return Icon(
      Icons.navigate_next,
      color: Colors.white,
      size: 35.0,
    );
  }

  Widget renderDoneBtn() {
    return Text(
        "Concordo!",
      style: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.bold,
        color: Colors.white
      ),
    );
  }

//  Widget renderSkipBtn() {
//    return Icon(
//      Icons.skip_next,
//      color: Color(0xffD02090),
//    );
//  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      // List slides
      slides: this.slides,

      // Skip button
      isShowSkipBtn: false,

      // Next button
      renderNextBtn: this.renderNextBtn(),

      // Done button
      renderDoneBtn: this.renderDoneBtn(),
      onDonePress: this.onDonePress,
      colorDoneBtn: Color(0x33000000),
      highlightColorDoneBtn: Color(0xff000000),

      // Dot indicator
      colorDot: Colors.white30,
      colorActiveDot: Colors.white,
      sizeDot: 13.0,

    );
  }
}