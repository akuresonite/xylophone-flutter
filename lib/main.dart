import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  
  void audioPlayer(int audioNum){
    final player = AudioCache();
    player.play('note$audioNum.wav');
  }

  Expanded buildKey({Color color,int audioNum}){
    return Expanded(
            child:Container(
              child: FlatButton(
                onPressed: (){
                  audioPlayer(audioNum);
                      },
              child: Text(''),
              color: color,
             ),
          ), 
            );
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildKey(color: Colors.red,audioNum:1),
          buildKey(color: Colors.orange,audioNum:2),
          buildKey(color: Colors.yellow,audioNum:3),
          buildKey(color: Colors.green,audioNum:4),
          buildKey(color: Colors.teal,audioNum:5),
          buildKey(color: Colors.blue,audioNum:6),
          buildKey(color: Colors.purple,audioNum:7),
        ],
          ),
      ),
    );
  }
}
