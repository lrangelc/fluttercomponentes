import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
        child: Column(children: <Widget>[
      ListTile(
        title: Text('hola'),
        leading: Icon(Icons.photo_album, color: Colors.red),
        subtitle: Text('Aqui estamos con el desarrollo de flutter'),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FlatButton(
            child: Text('Cancelar'),
            onPressed: () {},
          ),
          FlatButton(
            child: Text('Ok'),
            onPressed: () {},
          ),
        ],
      ),
    ]));
  }

  Widget _cardTipo2() {
    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/image_loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit:BoxFit.cover,
            image: NetworkImage(
                'https://travel.home.sndimg.com/content/dam/images/travel/fullset/2015/08/03/america-the-beautiful-ss/adirondack-park-new-york-state.jpg.rend.hgtvcom.966.725.suffix/1491580836599.jpeg'),
          ),

          // Image(
          //   image: NetworkImage(
          //       'https://travel.home.sndimg.com/content/dam/images/travel/fullset/2015/08/03/america-the-beautiful-ss/adirondack-park-new-york-state.jpg.rend.hgtvcom.966.725.suffix/1491580836599.jpeg'),
          // ),
          Container(
              padding: EdgeInsets.all(1.0),
              child: Text('No tengo idea de que poner'))
        ],
      ),
    );
  }
}
