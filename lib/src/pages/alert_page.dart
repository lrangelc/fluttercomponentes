import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/rpaico.png',
              fit: BoxFit.contain,
              height: 32,
            ),
            Container(
                padding: const EdgeInsets.all(8.0), child: Text('Alertas'))
          ],
        ),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar Alerta'),
          color: Colors.red,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: () => _mostrarAlert(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.assignment_return),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            title: Text('titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Este es el contenido de la caja de alerta'),
                FlutterLogo(
                  size: 100.0,
                )
              ],
            ),
            actions: <Widget>[
              FlatButton(
                  child: Text('Cancelar'),
                  onPressed: () => Navigator.of(context).pop()),
              FlatButton(
                  child: Text('Ok'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  })
            ],
          );
        });
  }
}
