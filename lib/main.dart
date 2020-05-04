import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(lucky());
}

class lucky extends StatefulWidget {
  @override
  _luckyState createState() => _luckyState();
}

class _luckyState extends State<lucky> {
  int nextImagen = 5;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.black,
          title: Center(child: Text('Lucky App')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            Expanded(
              flex: 1,
              child: Center(
                child: Center(child: Image.asset('assets/Imagenes/Dado_$nextImagen.png') ,) ,
              ),
            ),
            Spacer(),
            RaisedButton(
              onPressed: () {
                setState(() {
                  nextImagen = Random().nextInt(6) + 1;
                });
              },
              child: Text('Tira los dados'),
            )
          ],
        ),
      ),
    );
  }
}
