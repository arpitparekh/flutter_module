import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  Widget playSound(Color color,String sound){
      return Expanded(
        child: InkWell(
          onTap: () {
            final assetsAudioPlayer = AssetsAudioPlayer();
            assetsAudioPlayer.open(
              Audio("assets/$sound"),
            );
            assetsAudioPlayer.play();
          },
          child: Ink(
            height: 50,
            color: color,
          ),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('xylophone'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            playSound(Colors.red,"note1.wav"),
            playSound(Colors.orange,"note2.wav"),
            playSound(Colors.yellow,"note3.wav"),
            playSound(Colors.green,"note4.wav"),
            playSound(Colors.blue,"note5.wav"),
            playSound(Colors.blue.shade900,"note6.wav"),
            playSound(Colors.purple,"note7.wav"),
          ],
        ),
      ),
    );
  }
}
