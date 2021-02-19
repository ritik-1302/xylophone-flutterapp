// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playsound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded Buildkey({Color color, int soundNumber}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playsound(soundNumber);

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
            children: [
              Buildkey(color:Colors.red ,soundNumber:1),
              Buildkey(color:Colors.orange ,soundNumber:2),
              Buildkey(color:Colors.yellow ,soundNumber:3),
              Buildkey(color:Colors.green ,soundNumber:4),
              Buildkey(color:Colors.teal ,soundNumber:5),
              Buildkey(color:Colors.blue ,soundNumber:6),
              Buildkey(color:Colors.purple ,soundNumber:7),


            ],
          ),
        ),
      ),
    );
  }
}
