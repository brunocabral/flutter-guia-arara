import 'package:flutter/material.dart';

class SectorTile extends StatelessWidget {

  ///número do setor
  final String id;

  final String name;

  ///Tela que irá ser redirecionada no evento onTap()
  final Widget route;

  SectorTile({this.id, this.name, this.route});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Colors.blueAccent,
        onTap: (){
          if (route != null) {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => route)
            );
          }
        },
        child: ListTile(
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Setor",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                ),
              ),
              Text(
                id,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
          title: Text(name),
        ),
      ),
    );
  }
}
