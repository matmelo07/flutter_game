import 'package:bonfire/bonfire.dart';
import 'package:bonfire/widgets/bonfire_tiled_widget.dart';
import 'package:flutter/material.dart';
import 'package:game_test/hero.dart';

import 'orc.dart';

double tileSize = 16;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return BonfireTiledWidget(
      joystick:Joystick(directional: JoystickDirectional(
        color: Color.fromARGB(255, 5, 64, 112),
        
      ),
      actions: [
        JoystickAction(actionId: 1, 
        color: Color.fromARGB(255, 180, 7, 7),
        margin: EdgeInsets.all(40)
        )
      ]
      ),
      map: 
     TiledWorldMap('map/gameteste.tmj',
     objectsBuilder: {
       'orc':((properties) => Orc(properties.position, properties.size))
     },
     forceTileSize:Size(tileSize, tileSize)),
     player: GameHero(Vector2 (18*tileSize,14*tileSize), Vector2 (tileSize,tileSize)),
     cameraConfig: CameraConfig(
      moveOnlyMapArea: true,
      zoom: 2.3
     ),
    
     );
  }
}