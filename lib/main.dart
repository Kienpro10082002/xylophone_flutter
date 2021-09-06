import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void TheSoundAudio(int NoteSound) {
    //add it to your class as a local variable
    final player = AudioCache();
    // call this method when desired
    player.play('note$NoteSound.wav');
  }

  Expanded Build_Keys({required Color color, required int soundNumber}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          TheSoundAudio(soundNumber);
        },
        child: Text(''),
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Build_Keys(color: Colors.red, soundNumber: 1),
                Build_Keys(color: Colors.orange, soundNumber: 2),
                Build_Keys(color: Colors.yellow, soundNumber: 3),
                Build_Keys(color: Colors.green, soundNumber: 4),
                Build_Keys(color: Colors.blue, soundNumber: 5),
                Build_Keys(color: Colors.indigo, soundNumber: 6),
                Build_Keys(color: Colors.purple, soundNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
