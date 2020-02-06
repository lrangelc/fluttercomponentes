import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key key}) : super(key: key);

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
                padding: const EdgeInsets.all(8.0), child: Text('Avatars'))
          ],
        ),
        actions: <Widget>[
          Container(
              padding: EdgeInsets.all(5.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://dam.menshealthlatam.com/wp-content/uploads/2018/11/STANLEE.jpg'),
              )),
          Container(
              child: CircleAvatar(
            child: Text('SL'),
            backgroundColor: Colors.yellowAccent,
          ))
        ]
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/image_loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          // height: 300.0,
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://pm1.narvii.com/6397/ab134d564d860fa36cac45b5835fd5e68adbf141_hq.jpg'),
        ),
      ),
    );
  }
}
