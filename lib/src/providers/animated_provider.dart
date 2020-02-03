import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _AnimatedProvider {
  List<dynamic> opciones = [];

  _AnimatedProvider() {
    // cargarData();
  }

  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/animated_opts.json');

    Map dataMap = json.decode(resp);
    opciones = dataMap['combinacion'];

    return opciones;
  }
}

final animatedProvider = new _AnimatedProvider();
