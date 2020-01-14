import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          primary: true,
          actions: <Widget>[
            Image(
              image: AssetImage('images/diamond.png'),
            ),
            Image(
              image: AssetImage('images/diamond.png'),
            ),
          ],
          title: Text(
            'Ice Ice Ice Ice',
          ),
          backgroundColor: Colors.blueGrey[900],
          toolbarOpacity: .5,
          leading: Image(
            image: AssetImage('images/diamond.png'),
          ),
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/diamond.png'),
          ),
        ),
      ),
    ),
  );
}
