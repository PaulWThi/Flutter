import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(
    XylophoneApp(),
  );
}

class XylophoneApp extends StatelessWidget {
  void playSound() {
    print('playing sound');
    AssetsAudioPlayer player = new AssetsAudioPlayer();
    player.open(AssetsAudio(
      asset: "note1.mp3",
      folder: "assets/",
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FlatButton(
              onPressed: () {},
              child: Text(
                'Click Me!',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
