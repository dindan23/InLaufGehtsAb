import 'package:bonfire/bonfire.dart';

/// GameDecoration with collision used in construct of the map with Tiled
class GameDecorationWithCollision extends GameDecoration with ObjectCollision {
  bool aboveComponents = false;

  GameDecorationWithCollision({
    required Vector2 position,
    required Vector2 size,
    Sprite? sprite,
    SpriteAnimation? animation,
    Iterable<CollisionArea>? collisions,
    double offsetX = 0,
    double offsetY = 0,
    this.aboveComponents = false,
  }) : super(
          position: position,
          size: size,
          animation: animation,
          sprite: sprite,
        ) {
    if (collisions != null) {
      setupCollision(
        CollisionConfig(collisions: collisions),
      );
    }
  }

  GameDecorationWithCollision.withSprite({
    required Future<Sprite> sprite,
    required Vector2 position,
    required Vector2 size,
    Iterable<CollisionArea>? collisions,
    double offsetX = 0,
    double offsetY = 0,
    this.aboveComponents = false,
  }) : super.withSprite(
          sprite: sprite,
          position: position,
          size: size,
        ) {
    if (collisions != null) {
      setupCollision(
        CollisionConfig(collisions: collisions),
      );
    }
  }

  GameDecorationWithCollision.withAnimation({
    required Future<SpriteAnimation> animation,
    required Vector2 position,
    required Vector2 size,
    Iterable<CollisionArea>? collisions,
    double offsetX = 0,
    double offsetY = 0,
    this.aboveComponents = false,
  }) : super.withAnimation(
          animation: animation,
          position: position,
          size: size,
        ) {
    if (collisions != null) {
      setupCollision(
        CollisionConfig(collisions: collisions),
      );
    }
  }
}
