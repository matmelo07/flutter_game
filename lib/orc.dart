

// ignore_for_file: avoid_renaming_method_parameters

import 'package:bonfire/bonfire.dart';
import 'package:flutter/cupertino.dart';
import 'package:game_test/main.dart';
import 'package:game_test/orc_sprite_sheet.dart';

class Orc extends SimpleEnemy with ObjectCollision {
  Orc(Vector2 position ,Vector2 size): super(
    position:position,
    size: Vector2(19, 19),
    speed:20,
    animation: SimpleDirectionAnimation(
      idleRight: OrcSpriteSheet.orcIdleright,
      idleLeft: OrcSpriteSheet.orcIdleleft,
      runRight:OrcSpriteSheet.orcRunRight,
      runLeft: OrcSpriteSheet.orcRunLeft
       ),
     )
     {
      setupCollision(CollisionConfig(collisions: [
            CollisionArea.rectangle(size: 
            size,
            align: Vector2 (6,10)
            )
      ]));
     }
    
 @override
  void update(double dt) {
     seeAndMoveToPlayer(
      closePlayer: (player){},
      radiusVision: tileSize * 2,
      margin: 4,

     );
   
    super.update(dt);
  }
  @override
  void render(Canvas canvas){
    drawDefaultLifeBar(canvas);
    super.render(canvas);
  }
  
  @override 
  void die(){
    removeFromParent();
    super.die();
  }
 
  @override
  void receiveDamage(AttackFromEnum attacker, double damage, identify) {
    if(lastDirectionHorizontal == Direction.left){
      animation?.playOnce(OrcSpriteSheet.receiveDamageLeft, runToTheEnd: true);
    }else{
      animation?.playOnce(OrcSpriteSheet.receiveDamageRight,runToTheEnd: true);
    }
    super.receiveDamage(attacker, damage, identify);
  }
    
}

