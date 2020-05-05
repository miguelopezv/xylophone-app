import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(
      XylophoneApp(),
    );

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey(int soundPosition, int gradient) => Expanded(
        child: FlatButton(
          color: Colors.green[gradient],
          onPressed: () {
            playSound(soundPosition);
          },
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(1, 100),
              buildKey(2, 200),
              buildKey(3, 300),
              buildKey(4, 400),
              buildKey(5, 500),
              buildKey(6, 600),
              buildKey(7, 700),
            ],
          ),
        ),
      ),
    );
  }
}
