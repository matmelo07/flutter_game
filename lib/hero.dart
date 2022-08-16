import 'package:bonfire/bonfire.dart';
import 'package:flutter/cupertino.dart';
import 'package:game_test/game_sprite_sheet.dart';
import 'package:bonfire/joystick/joystick.dart';
import 'package:game_test/main.dart';


class GameHero extends SimplePlayer with ObjectCollision{
    GameHero(Vector2 position, Vector2 size): super(
          position: position,
          size:Vector2(19,19),
          animation: SimpleDirectionAnimation(
            idleRight:GameSpriteSheet.heroIdleright,
            idleLeft:GameSpriteSheet.heroIdleleft,
            runRight:GameSpriteSheet.heroRunRight,
            runLeft:GameSpriteSheet.heroRunLeft
          
        ),
        speed: 60,
       )
       {
        setupCollision(CollisionConfig(collisions: [
              CollisionArea.rectangle(
                size: size,
                align: Vector2(6,10)),
                
                
        ]),);
       }
   
  @override
  void joystickAction(JoystickActionEvent event) {
    if(event.event == ActionEvent.DOWN && event.id == 1){
     _executeAttack();
    }
    super.joystickAction(event);
  }
  
  void _executeAttack() {
    simpleAttackMelee(damage: 20, size: Vector2(40, 40));
  }

}