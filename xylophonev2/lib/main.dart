import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound({int number}) {
    AssetsAudioPlayer player = new AssetsAudioPlayer();
    player.open(AssetsAudio(
      asset: "note$number.wav",
      folder: "assets/audios/",
    ));
  }

  Expanded buildKey({Color color, int number}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(number: number);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, number: 1),
              buildKey(color: Colors.orange, number: 2),
              buildKey(color: Colors.yellow, number: 3),
              buildKey(color: Colors.green, number: 4),
              buildKey(color: Colors.blue, number: 5),
              buildKey(color: Colors.indigo, number: 6),
              buildKey(color: Colors.purple, number: 7),
            ],
          ),
        ),
      ),
    );
  }
}
