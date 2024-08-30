import 'package:flutter/material.dart';
import 'package:guia_arara/models/climbing_sector.dart';


class SectorTile extends StatelessWidget {

  final ClimbingSector climbingSector;

  ///Tela que irá ser redirecionada no evento onTap()
  final Widget pageRoute;

  const SectorTile({required this.climbingSector, required this.pageRoute});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Colors.blueAccent,
        onTap: (){
          if (pageRoute != null) {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => pageRoute)
            );
          }
        },
        child: ListTile(
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Setor",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                ),
              ),
              Text(
                climbingSector.id,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                ),
              ),
            ],
          ),
          title: Text(
            climbingSector.name,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18
            ),
          ),
        ),
      ),
    );
  }

}
