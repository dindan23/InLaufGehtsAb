
import 'package:bonfire/collision/collision_area.dart';
import 'package:bonfire/tiled/model/tiled_data_object_collision.dart';
import 'package:bonfire/util/collision_game_component.dart';
import 'package:example/shared/decoration/column.dart';
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
import 'package:example/simple_example/missions.dart';
import 'package:example/simple_example/collisionObj.dart';
import 'package:example/simple_example/sounds.dart';
import 'package:flame_audio/flame_audio.dart';

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




    return BonfireTiledWidget(
      joystick: Joystick(
        directional: JoystickDirectional(),
      ),
      map: TiledWorldMap(
        'tiled/mapa2.json',
        forceTileSize: Size(16, 16),
        objectsBuilder: {
          //'goblin': (properties) => WizardNPC(Vector2(0,0)),
          'mission01': (properties) => Mission_01(properties.position),
          'mission02': (properties) => Mission_02(properties.position),
          'mission03': (properties) => Mission_03(properties.position),
          'mission03_1': (properties) => Mission_03_1(properties.position),
          'mission04': (properties) => Mission_04(properties.position),
          'mission05': (properties) => Mission_05(properties.position),
          'mission06': (properties) => Mission_06(properties.position),
          'mission07': (properties) => Mission_07(properties.position),
          'mission07_1': (properties) => Mission_07_1(properties.position),
          'mission08': (properties) => Mission_08(properties.position),
          'mission08_End': (properties) => Mission_08_End(properties.position),


          'barrel01': (properties) => BarrelDraggable(properties.position),
          'barrel02': (properties) => BarrelDraggable(properties.position),
          'barrel03': (properties) => BarrelDraggable(properties.position),
          'barrel04': (properties) => BarrelDraggable(properties.position),
          'barrel05': (properties) => BarrelDraggable(properties.position),
          'barrel06': (properties) => BarrelDraggable(properties.position),
          'barrel07': (properties) => BarrelDraggable(properties.position),

         // 'col01' : (properties) =>


        },
      ),
      //background: BackgroundImageGame(imagePath: "tileset/image_bg.jpeg", offset: Vector2(0, 0)),
      //lightingColorGame: Colors.black.withOpacity(0.7),
      cameraConfig: CameraConfig(
        smoothCameraEnabled: true,
        smoothCameraSpeed: 2,
      ),
      player: MyPlayer(Vector2(1200, 1215)),
    );

    
  }
}



