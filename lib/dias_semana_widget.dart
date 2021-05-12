import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'DiasDaSemana/AulasTerca.dart';
import 'DiasDaSemana/AulasQuarta.dart';
import 'DiasDaSemana/AulasQuinta.dart';
import 'DiasDaSemana/AulasSabado.dart';

class DiasSemana extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dias de Instituto"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                width: double.infinity,
                height: 50,
                margin:
                    EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                child: ElevatedButton(
                    style: ButtonStyle(),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AulasTerca()));
                    },
                    child: Text('Terça-Feira',
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center))),
            Container(
                width: double.infinity,
                height: 50.0,
                margin:
                    EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AulasQuarta()),
                      );
                    },
                    child: Text('Quarta-Feira',
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center))),
            Container(
                width: double.infinity,
                height: 50.0,
                margin:
                    EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AulasQuinta()),
                      );
                    },
                    child: Text('Quinta-Feira',
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center))),
            Container(
                width: double.infinity,
                height: 50.0,
                margin:
                    EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AulasSabado()),
                      );
                    },
                    child: Text('Sábado',
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center)))
          ],
        ),
      ),
    );
  }
}
