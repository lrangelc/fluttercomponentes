import 'package:flutter/material.dart';
import 'dart:math';

class RandomContainerPage extends StatefulWidget {
  @override
  _RandomContainerPageState createState() => _RandomContainerPageState();
}

class _RandomContainerPageState extends State<RandomContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.greenAccent;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Random Animated Container'),
        ),
        body: Center(
            child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.easeInOutBack,
          width: _width,
          height: _height,
          decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
        )),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_circle_outline),
          onPressed: _cambiarForma,
        ));
  }

  void _cambiarForma() {
    final random = Random();
    _width = random.nextInt(300).toDouble();
    _height = random.nextInt(300).toDouble();
    _color = Color.fromRGBO(
        random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    setState(() {});
    
  }
}
