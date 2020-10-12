import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundnum)
  {
     final player = AudioCache();
     player.play('note$soundnum.wav');
  }
    Expanded shuvo({Color color, int soundnum})
    {

    
    
      return  Expanded (
                child: FlatButton(
                color: color,
                onPressed: () {
                  playsound(soundnum);
                },
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
          children: <Widget>[
            
           shuvo(color:Colors.red, soundnum: 1),
            shuvo(color:Colors.orange, soundnum: 2),
            shuvo(color:Colors.yellow, soundnum: 3),
            shuvo(color:Colors.green, soundnum: 4),
            shuvo(color:Colors.blue, soundnum: 5),
            shuvo(color:Colors.teal, soundnum: 6),
            shuvo(color:Colors.purple, soundnum: 7),
            
          ],
        )),
      ),
    );
  }
}
