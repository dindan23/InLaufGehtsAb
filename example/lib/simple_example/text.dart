import 'package:example/simple_example/simple_example_game.dart';
import 'package:flutter/cupertino.dart';


class Texter{

String getText(String textId) {

  String setText = 'NOT FOUND!';

  if (languageSet == 'ger') {
    switch(textId) {

      case 'intro01' : setText = 'Heute findet in Lauf das große Kuchenfestival statt!Doch den Bäckern ist das Mehl ausgegangen...Kannst die die alte Mühle wieder in Gang bringen?Dann können wir unser eigenes Mehl herstellen und das Kuchenfestival retten!';
  }
  }


  if(languageSet == 'eng'){
    switch(textId) {

      case 'intro01' : setText = 'TODAY YEAH';
    }
  }



return setText;
}


}