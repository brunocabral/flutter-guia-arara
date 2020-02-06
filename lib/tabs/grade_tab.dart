import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GradeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 500,
        padding: const EdgeInsets.symmetric(horizontal:16.0, vertical: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 16.0),
            Text("Todas as vias esportivas estão graduadas na graduação brasileira e os "
                "boulders na graduação de Hueco."),
            SizedBox(height: 32.0),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
              decoration: _customBoxDecoration(context),
              height: 300,
              width: 400,
              child: _buildTable(context)
            ),
          ],
        ),
      ),
    );
  }

  Table _buildTable(BuildContext context){
    return Table(
      border: TableBorder.all(width: 2.0, color: Color.fromRGBO(163, 177, 198, 0.2)),
      children: [
        TableRow(
            children: [
              Text(""),
              Text("Vias", textAlign: TextAlign.center),
              Text(""),
              Text("Boulder", textAlign: TextAlign.center)
            ]
        ),
        TableRow(
            children: [
              Text("EUA", style: TextStyle(fontWeight: FontWeight.w500)),
              Text("França", style: TextStyle(fontWeight: FontWeight.w500)),
              Text("Brasil",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      backgroundColor: Theme.of(context).primaryColor,
                      color: Colors.white)
              ),
              Text("Hueco",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      backgroundColor: Theme.of(context).primaryColor,
                      color: Colors.white)
              ),
            ]
        ),
        TableRow(
            children: [
              Text("5.9"),
              Text("5c"),
              Text("5"),
              Text(""),
            ]
        ),
        TableRow(
            children: [
              Text("5.10a"),
              Text("5c+"),
              Text("5 Sup"),
              Text(""),
            ]
        ),
        TableRow(
            children: [
              Text("5.10b"),
              Text("6a"),
              Text("6a"),
              Text("V3"),
            ]
        ),
        TableRow(
            children: [
              Text("5.10c"),
              Text("6a+"),
              Text("6b"),
              Text(""),
            ]
        ),
        TableRow(
            children: [
              Text("5.10d"),
              Text("6b"),
              Text("6c"),
              Text("V3/V4"),
            ]
        ),
        TableRow(
            children: [
              Text("5.11a"),
              Text("6b+"),
              Text("7a"),
              Text("V4"),
            ]
        ),
        TableRow(
            children: [
              Text("5.11b/c"),
              Text("6c+"),
              Text("7b"),
              Text("V5"),
            ]
        ),
        TableRow(
            children: [
              Text("5.11d"),
              Text("7a"),
              Text("7c"),
              Text("V6"),
            ]
        ),
        TableRow(
            children: [
              Text("5.12a"),
              Text("7a+"),
              Text("8a"),
              Text("V7"),
            ]
        ),
        TableRow(
            children: [
              Text("5.12b"),
              Text("7b"),
              Text("8b"),
              Text("V8"),
            ]
        ),
        TableRow(
            children: [
              Text("5.12c"),
              Text("7b+"),
              Text("8c"),
              Text("V8/9"),
            ]
        ),
        TableRow(
            children: [
              Text("5.12d"),
              Text("7c"),
              Text("9a"),
              Text("V9/10"),
            ]
        ),
        TableRow(
            children: [
              Text("5.13a"),
              Text("7c+"),
              Text("9b"),
              Text("V10"),
            ]
        ),
        TableRow(
            children: [
              Text("5.13b"),
              Text("8a"),
              Text("9c"),
              Text("V11"),
            ]
        ),
        TableRow(
            children: [
              Text("5.13c"),
              Text("8a+"),
              Text("10a"),
              Text("V12"),
            ]
        )
      ],
    );
  }

  ///Neumorphism style decoration
  BoxDecoration _customBoxDecoration(BuildContext context) {
    return BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: Colors.white24, //borda interna
          width: 0.6,
        ),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(55, 84, 170, 0.05),
              offset: Offset(30, 30),
              blurRadius: 8.0),
          //upper light shadow
          BoxShadow(
              color: Color.fromRGBO(255, 255, 255, 0.6),
              offset: Offset(-9, -9),
              blurRadius: 8.0),
          //bottom darkshadow
          BoxShadow(
              color: Color.fromRGBO(163, 177, 198, 0.2),
              offset: Offset(9, 9),
              blurRadius: 12.0),

        ]);
  }
}
