import 'package:flutter/services.dart' show rootBundle;
import "dart:convert";

class _Menu1Provider {
  //una varible permita una serie de opciones dinamicas
  List<dynamic> opciones = [];

  _Menu1Provider() {
    cargarDataMenu1();
  }

  Future<List<dynamic>> cargarDataMenu1() async {
    final resp = await rootBundle.loadString('data/menu1_opts.json');

    Map dataMap = json.decode(resp);
    print(dataMap['rutas']);
    opciones = dataMap['rutas'];

    return opciones;
  }
}

final menu1Provider = new _Menu1Provider();