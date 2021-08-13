import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
//import 'package:intent/extra.dart';
import 'package:intent/intent.dart' as android_intent;
import 'package:url_launcher/url_launcher.dart';
//import 'package:intent/extra.dart' as android_extra;
//import 'package:intent/typedExtra.dart' as android_typedExtra;
//import 'package:intent/action.dart' as android_action;

class AulasQuarta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Aulas de quarta"),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.only(
                        top: 20, bottom: 20, left: 20, right: 20),
                    child: ElevatedButton(
                        onPressed: () {
                          Fluttertoast.showToast(
                              msg: "Abrindo o zoom, aguarde...",
                              toastLength: Toast.LENGTH_LONG,
                              gravity: ToastGravity.BOTTOM,
                              backgroundColor: Colors.white,
                              textColor: Colors.black);

                          if (kIsWeb) {
                            launch(
                                "https://zoom.us/j/94056241793?pwd=SFNmQUIvT0tRaHlDaVYrN3l5bzJVQT09");
                          } else {
                            openUrl(
                                "us.zoom.videomeetings",
                                "zoom.us",
                                "/j/94056241793",
                                {"pwd": "SFNmQUIvT0tRaHlDaVYrN3l5bzJVQT09"});
                          }
                        },
                        child: Text('19h - Doctrina y Convenios',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center))),
                Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.only(
                        top: 20, bottom: 20, left: 20, right: 20),
                    child: ElevatedButton(
                        onPressed: () {
                          Fluttertoast.showToast(
                              msg: "Abrindo o zoom, aguarde...",
                              toastLength: Toast.LENGTH_LONG,
                              gravity: ToastGravity.BOTTOM,
                              backgroundColor: Colors.white,
                              textColor: Colors.black);

                          if (kIsWeb) {
                            launch(
                                "https://zoom.us/j/95927244033?pwd=TkZLeU1MY2d5eUpqeTJ5WUJTRHlVUT09");
                          } else {
                            openUrl(
                                "us.zoom.videomeetings",
                                "zoom.us",
                                "/j/95927244033",
                                {"pwd": "TkZLeU1MY2d5eUpqeTJ5WUJTRHlVUT09"});
                          }
                        },
                        child: Text(
                            "19h - Curso da Bíblia: As parábolas de Jesus",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.center))),
                Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.only(
                        top: 20, bottom: 20, left: 20, right: 20),
                    child: ElevatedButton(
                        onPressed: () {
                          Fluttertoast.showToast(
                              msg: "Abrindo o zoom, aguarde...",
                              toastLength: Toast.LENGTH_LONG,
                              gravity: ToastGravity.BOTTOM,
                              backgroundColor: Colors.white,
                              textColor: Colors.black);

                          if (kIsWeb) {
                            launch(
                                "https://zoom.us/j/94056241793?pwd=SFNmQUIvT0tRaHlDaVYrN3l5bzJVQT09");
                          } else {
                            openUrl(
                                "us.zoom.videomeetings",
                                "zoom.us",
                                "/j/94056241793",
                                {"pwd": "SFNmQUIvT0tRaHlDaVYrN3l5bzJVQT09"});
                          }
                        },
                        child: Text('20h - Ensinamentos de Russel M. Nelson',
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.center))),
              ],
            ),
          ),
        ));
  }

  void openUrl(String packageName, String baseUrl, String path,
      [Map<String, dynamic> queryParams]) {
    android_intent.Intent()
      ..setPackage(packageName)
      ..setData(Uri.https(baseUrl, path, queryParams))
      ..startActivity().catchError((e) => print(e));
  }
}
