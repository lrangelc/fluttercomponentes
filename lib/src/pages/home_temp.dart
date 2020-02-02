import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = [
    'uno',
    'due',
    'tre',
    'quattro',
    'cinque',
    'sei',
    'sette',
    'otto',
    'nove',
    'dieci',
    'undici',
    'dodici',
    'tredici',
    'quattordici',
    'quindici'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(children: _crearItems()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();

    for (var item in opciones) {
      final tempWidget = ListTile(
        title: Text('$item'),
        subtitle: Text('Cualquier cosa'),
        leading: Icon(Icons.add_a_photo),
        trailing: Icon(Icons.add_call),
        onTap: () {},
      );

      lista
        ..add(tempWidget)
        ..add(Divider(
          color: Colors.black,
        ));
    }
    return lista;
  }
}
