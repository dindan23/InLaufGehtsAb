
import 'package:example/simple_example/bonfire_ref.dart';
import 'package:bonfire/bonfire.dart';
import 'package:bonfire/background/background_image_game.dart';

import 'package:example/simple_example/my_enemy.dart';
import 'package:example/simple_example/my_player.dart';
import 'package:flutter/material.dart';

import 'package:example/shared/decoration/barrel_dragable.dart';
import 'package:example/shared/decoration/chest.dart';
import 'package:example/shared/decoration/spikes.dart';
import 'package:example/shared/decoration/torch.dart';
import 'package:example/shared/enemy/goblin.dart';
import 'package:example/manual_map/dungeon_map.dart';

import 'package:bonfire/base/bonfire_game_interface.dart';
import 'package:flame/components.dart';

import 'package:example/shared/util/player_sprite_sheet.dart';
import 'package:example/shared/util/common_sprite_sheet.dart';
import 'package:example/simple_example/text.dart';
import 'package:example/shared/decoration/mission01.dart';

String languageSet = 'ger';
String streamText = 'BEGIN';

mixin BonfireHasGameRef {
  BonfireGameInterface? _gameRef;

  BonfireGameInterface get gameRef {
    final ref = _gameRef;
    if (ref == null) {
      throw 'Accessing gameRef before the component was added to the game!';
    }
    return ref;
  }

  bool get hasGameRef => _gameRef != null;

  set gameRef(BonfireGameInterface gameRef) {
    _gameRef = gameRef;
    if (this is Component) {
      (this as Component)
          .children
          .whereType<BonfireHasGameRef>()
          .forEach((e) => e.gameRef = gameRef);
    }
  }
}

///
/// Created by
///
/// ─▄▀─▄▀
/// ──▀──▀
/// █▀▀▀▀▀█▄
/// █░░░░░█─█
/// ▀▄▄▄▄▄▀▀
///
/// Rafaelbarbosatec
/// on 19/10/21



class SimpleExampleGame extends StatelessWidget
{
  const SimpleExampleGame({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    print(Texter().getText('intro01'));

    return BonfireTiledWidget(
      joystick: Joystick(
        directional: JoystickDirectional(),
      ),
      map: TiledWorldMap(
        'tiled/mapa2.json',
        forceTileSize: Size(16, 16),
        objectsBuilder: {
          //'goblin': (properties) => WizardNPC(Vector2(0,0)),
          'mission01': (properties) => WizardNPC(Vector2(0,0))

        },
      ),
      //background: BackgroundImageGame(imagePath: "tileset/image_bg.jpeg", offset: Vector2(0, 0)),
      //lightingColorGame: Colors.black.withOpacity(0.7),
      cameraConfig: CameraConfig(
        smoothCameraEnabled: true,
        smoothCameraSpeed: 2,
      ),
      player: MyPlayer(Vector2(40, 60)),
    );

    
  }
}






class WizardNPC extends GameDecoration {


  bool _showConversation = false;
  WizardNPC(
      Vector2 position,
      ) : super.withAnimation(
    animation: CommonSpriteSheet.chestAnimated,
    position: position,
    size: Vector2(16 * 0.8,16)
  );

  @override
  void update(double dt) {
    super.update(dt);
    if (gameRef.player != null) {
      this.seeComponent(
        gameRef.player!,
        observed: (player) {
          if (!_showConversation) {
            _showConversation = true;
            _showIntroduction();
          }
        },
        radiusVision: (2 * 16),
      );
    }
  }

  void _showIntroduction()  {
    //Sounds.interaction();

    TalkDialog.show(gameRef.context, [
      Say(

        text: [
          TextSpan(text: Texter().getText('intro01')),
        ],

      ),


    ], onChangeTalk: (index) {
      //Sounds.interaction();
    }, onFinish: () {
      //Sounds.interaction();
    });
  }
}

