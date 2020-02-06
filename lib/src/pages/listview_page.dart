import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  ListaPage({Key key}) : super(key: key);

  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  ScrollController _scrollController = new ScrollController();
  List<int> _listaNumeros = new List();
  int _ultimoItem = 0;

  @override
  void initState() {
    _agregar10();
    _scrollController.addListener(cambioScroll);
    // _scrollController.addListener(() {
    //   print('Scrol!!');
    //   if (_scrollController.position.pixels ==
    //       _scrollController.position.maxScrollExtent) {
    //     _agregar10();
    //   }
    // });

    super.initState();
  }

  void cambioScroll() {
    // print('Scrol2!!');
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      _agregar10();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: _crearLista(),
    );
  }

  Widget _crearLista() {
    return ListView.builder(
      controller: _scrollController,
      itemCount: _listaNumeros.length,
      itemBuilder: (BuildContext context, int indice) {
        final image = _listaNumeros[indice];

        return FadeInImage(
          placeholder: AssetImage('assets/image_loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          fit: BoxFit.contain,
          image: NetworkImage('https://i.picsum.photos/id/$image/500/300.jpg'),
        );
      },
    );
  }

  void _agregar10() {
    for (var i = 0; i < 10; i++) {
      _ultimoItem++;
      _listaNumeros.add(_ultimoItem);
    }

    setState(() {});
  }
}
