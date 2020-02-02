import 'package:flutter/material.dart';

import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
// import 'package:componentes/src/pages/alert_page.dart';

class HomePage extends StatelessWidget {
  // const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Componentes'),
        ),
        body: _lista(),
      ),
    );
  }

  Widget _lista() {
    // menuProvider.cargarData().then((opciones) {
    //   print(opciones);
    // });

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItem(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItem(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    if (data != null) {
      data.forEach((opt) {
        final widgetTemp = new ListTile(
          title: Text(
            opt['texto'],
          ),
          leading: getIcon(opt['icon']),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.red,
          ),
          onTap: () {
            Navigator.pushNamed(context, opt['ruta']);

            // final route =MaterialPageRoute(
            //   builder: (context) {
            //     return AlertPage();
            //   }
            // );
            // Navigator.push(context, route);
          },
        );

        opciones..add(widgetTemp)..add(Divider());
      });
    }

    return opciones;
    // return [
    //   ListTile(
    //     title: Text('Hola Mundo'),
    //   ),
    //   Divider(),
    //   ListTile(
    //     title: Text('Hola Mundo'),
    //   ),
    //   Divider(),
    //   ListTile(
    //     title: Text('Hola Mundo'),
    //   ),
    //   Divider(),
    // ];
  }
}
