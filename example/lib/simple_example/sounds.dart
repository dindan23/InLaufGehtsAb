import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

class Sounds {
  static Future initialize() async {

    if (!kIsWeb) {
      //FlameAudio.bgm.initialize();
      await FlameAudio.audioCache.loadAll([
          'interaction.wav',
          //'sound_bg.mp3,',
          'pickup.wav'

        ]);
    }
  }

  static void backgroundMusic() {
    if (kIsWeb) return;
    FlameAudio.loopLongAudio('sound_bg.mp3', volume: 0.4);
  }

  static void TextOpen() {
    if (kIsWeb) return;
    FlameAudio.play('interaction.wav', volume: 0.4);
  }

  static void MahlsteinAudio() {
    if (kIsWeb) return;
    FlameAudio.loop('interaction.wav', volume: 0.2);
  }

  static void PickUp() {
    if (kIsWeb) return;
    FlameAudio.play('pickup.wav', volume: 0.4);
  }

}
