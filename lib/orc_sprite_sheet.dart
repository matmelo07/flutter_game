import 'package:bonfire/bonfire.dart';

class OrcSpriteSheet{
   static Future<SpriteAnimation> get orcIdleleft => SpriteAnimation.load('orc_.png',
   SpriteAnimationData.sequenced(
    amount: 4,
    stepTime: 0.15,
    textureSize: Vector2(24,24),
    texturePosition:Vector2 (96,0) ),
  );
  static  Future<SpriteAnimation> get orcIdleright => SpriteAnimation.load('orc_.png',
   SpriteAnimationData.sequenced(
    amount: 4,
    stepTime: 0.15,
    textureSize: Vector2(24,24),
    texturePosition:Vector2 (0,0) ),
  );
  static Future<SpriteAnimation> get orcRunRight => SpriteAnimation.load('orc_.png',
   SpriteAnimationData.sequenced(
    amount: 4,
    stepTime: 0.15,
    textureSize: Vector2(24,24),
    texturePosition:Vector2 (0,48) ),
  );
  static Future<SpriteAnimation> get orcRunLeft => SpriteAnimation.load('orc_.png',
   SpriteAnimationData.sequenced(
    amount: 4,
    stepTime: 0.15,
    textureSize: Vector2(24,24),
    texturePosition:Vector2 (96,48) ),
  );
  static Future<SpriteAnimation> get receiveDamageRight => SpriteAnimation.load('orc_.png',
   SpriteAnimationData.sequenced(
    amount: 4,
    stepTime: 0.15,
    textureSize: Vector2(24,24),
    texturePosition:Vector2 (0,96) ),
  );
  static Future<SpriteAnimation> get receiveDamageLeft => SpriteAnimation.load('orc_.png',
   SpriteAnimationData.sequenced(
    amount: 4,
    stepTime: 0.15,
    textureSize: Vector2(24,24),
    texturePosition:Vector2 (96,96) ),
  );
}
