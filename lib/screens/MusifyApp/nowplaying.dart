/*

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


class NowPlayingScreen extends StatelessWidget {
  final AudioPlayer audioPlayer;
  final String currentSong; // The currently playing song

  NowPlayingScreen({ required this.currentSong, required this.audioPlayer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Now Playing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Now Playing:',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 10.0),
            Text(
              currentSong,
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),

            AudioPlayer(),

            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Implement logic to stop the audio player and navigate back to the music player screen
               // audioPlayer.stop();
                Navigator.pop(context);
              },
              child: Text('Stop Music and Back to Music Player'),
            ),
          ],
        ),
      ),
    );
  }
}
*/