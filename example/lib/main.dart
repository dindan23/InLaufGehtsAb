import 'package:bonfire/bonfire.dart';
import 'package:example/manual_map/game_manual_map.dart';
import 'package:example/simple_example/simple_example_game.dart';
import 'package:example/tiled_map/game_tiled_map.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:example/simple_example/sounds.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb) {
    await Flame.device.setLandscape();
    await Flame.device.fullScreen();

  }
  await Sounds.initialize();
  runApp(
    MaterialApp(
      home: Menu(),
    ),
  );
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Startbild.png"),
            fit: BoxFit.cover,
          ),
        ),

        child: Column(

          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'In Lauf gehts ab!',

              style: TextStyle(
                backgroundColor: Colors.white,
                  fontSize: 40,
                  color: Colors.black,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(0, 0, 0, 0.8)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                child: Text('Start'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SimpleExampleGame()),);
                },
              ),
            ),

            SizedBox(
              height: 50,

            ),
            SizedBox(
              width: 200,


              child: ElevatedButton(
                style: ButtonStyle(

                  backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(200, 200,200, 0.7)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                child: Text('German', style: TextStyle(
                color: Colors.black,
                ),
                ),

                onPressed: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => GameManualMap()),);
                  languageSet = 'ger';
                },
              ),




            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 200,


              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(200, 200,200, 0.7)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                child: Text('English', style: TextStyle(
                color: Colors.black,
                ),
                ),
                onPressed: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => GameTiledMap(),),);
                  languageSet = 'eng';
                },
              ),





            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 20,
        child: Center(
          child: Text(
            'Entwickelt von Vanessa Neubert und Daniel Dinnes',
            style: TextStyle(fontSize: 15),
          ),
        ),
      ),
    );
  }
}
