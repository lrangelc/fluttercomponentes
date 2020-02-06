import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 200.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders - Checks'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _checkBox(),
            _crearSwitch(),
            Expanded(child: _crearImage())
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
        activeColor: Colors.indigoAccent,
        label: 'Tamaño de la Imagen $_valorSlider',
        // divisions: 50,
        value: _valorSlider,
        min: 100,
        max: 400,
        onChanged: (_bloquearCheck)
            ? null
            : (valor) {
                _valorSlider = valor;
                setState(() {});
                print(_valorSlider);
              });
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck,
      onChanged: (valor) {
        _bloquearCheck = valor;
        setState(() {});
      },
    );
  }

  Widget _checkBox() {
    // return Checkbox(
    //   value: _bloquearCheck,
    //   onChanged: (valor) {
    //     _bloquearCheck = valor;
    //     setState(() {});
    //   },
    // );

    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck,
      onChanged: (valor) {
        _bloquearCheck = valor;
        setState(() {});
      },
    );
  }

  Widget _crearImage() {
    // return Image(image:NetworkImage('https://vignette.wikia.nocookie.net/dbxfanon/images/8/8f/Aquaman_transparent_by_asthonx1-dakip9a.png/revision/latest?cb=20180307142332'),
    // width: _valorSlider,
    // fit: BoxFit.contain,);

    return FadeInImage(
      placeholder: AssetImage('assets/image_loading.gif'),
      fadeInDuration: Duration(milliseconds: 200),
      // height: 300.0,
      width: _valorSlider,
      fit: BoxFit.contain,
      image: NetworkImage(
          'https://vignette.wikia.nocookie.net/dbxfanon/images/8/8f/Aquaman_transparent_by_asthonx1-dakip9a.png/revision/latest?cb=20180307142332'),
    );
  }
}
