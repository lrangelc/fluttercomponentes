import 'package:flutter/material.dart';
import 'dart:math';

import 'package:componentes/src/providers/animated_provider.dart';

class AnimatedContainerPage extends StatefulWidget {
  AnimatedContainerPage({Key key}) : super(key: key);

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  int _pos = 0;
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.greenAccent;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Animated Container'),
        ),
        body: _lista(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_circle_outline),
          onPressed: () {
            setState(() {
              if (animatedProvider.opciones.length > 0) {
                if (_pos < (animatedProvider.opciones.length - 1)) {
                  _pos++;
                } else {
                  _pos = 0;
                }
                _listaItem(animatedProvider.opciones);
              }
            });
          },
        ));
  }

  Widget _lista() {
    return FutureBuilder(
      future: animatedProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return _listaItem(snapshot.data);
      },
    );
  }

  Widget _listaItem(List<dynamic> data) {
    if (data != null) {
      final random = Random();
      _width = data[_pos]['width'];
      _height = data[_pos]['height'];
      _color = Color.fromRGBO(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    }

    return Center(
        child: AnimatedContainer(
      duration: Duration(seconds: 1),
      curve: Curves.easeInOutBack,
      width: _width,
      height: _height,
      decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
    ));
  }
}
