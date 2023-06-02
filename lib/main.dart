import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());


class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber){
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey (Color color, int soundNumber)
  {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: color),
        onPressed: () async {
          playSound(soundNumber);
        },
        child: null,
      ),
    );

  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(Colors.red, 1),
                buildKey(Colors.orange, 2),
                buildKey(Colors.yellow, 3),
                buildKey(Colors.greenAccent, 4),
                buildKey(Colors.green, 5),
                buildKey(Colors.blue, 6),
                buildKey(Colors.purple, 7)


              ],
            )
        ),
      ),
    );
  }
}
