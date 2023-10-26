import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tunes_player_app/item.dart';

void main() {
  runApp(SafeArea(child: Home()));
}

class Home extends StatelessWidget {
  const Home({super.key});
  playAudio(String audio) {
    final player = AudioPlayer();
    player.play(AssetSource(audio));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Item(
                      color: const Color(0xFFE3F2FD),
                      ontap: () {
                        playAudio("note1.wav");
                      })),
              Item(
                  color: const Color(0xFFBBDEFB),
                  ontap: () {
                    playAudio("note2.wav");
                  }),
              Expanded(
                  flex: 1,
                  child: Item(
                      color: const Color(0xFF90CAF9),
                      ontap: () {
                        playAudio("note3.wav");
                      })),
              Item(
                  color: const Color(0xFF64B5F6),
                  ontap: () {
                    playAudio("note4.wav");
                  }),
              Item(
                  color: const Color(0xFF1E88E5),
                  ontap: () {
                    playAudio("note5.wav");
                  }),
              Item(
                  color: const Color(0xFF1976D2),
                  ontap: () {
                    playAudio("note6.wav");
                  }),
              Expanded(
                  flex: 1,
                  child: Item(
                      color: const Color(0xFF1565C0),
                      ontap: () {
                        playAudio("note7.wav");
                      })),
            ],
          ),
        ));
  }
}
