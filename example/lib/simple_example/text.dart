import 'package:example/simple_example/simple_example_game.dart';
import 'package:flutter/cupertino.dart';


class Texter{

String getText(String textId) {

  String setText = 'NOT FOUND!';

  if (languageSet == 'ger') {
    switch(textId) {

      case 'intro01' : setText = 'Heute findet in Lauf das große Kuchenfestival statt! Doch den Bäckern ist das Mehl ausgegangen… Kannst die die alte Mühle wieder in Gang bringen? Dann können wir unser eigenes Mehl herstellen und das Kuchenfestival retten!';
      break;
      case 'intro02' : setText = 'Da vorne steht die Mühle. Das Wasserrad dreht sich zwar, aber der Mahlstein bewegt sich nicht. Schau dich doch mal um, vielleicht kannst du erkennen woran das liegt.';
      break;
      case 'mission3' : setText = 'Ah, hier fehlt das Zahnrad, dass das Wasserrad mit der Mühle verbindet. Super, den Fehler haben wir schonmal gefunden! Jetzt brauchen wir nur noch ein Zahnrad… Vielleicht können wir uns ein passendes Ersatzteil aus einem der anderen Gebäude holen…';
      break;
      case 'mission3_1' : setText = 'Das Zahnrad liegt hinter den Fässern. Wir müssen sie beiseite schieben, damit wir hinkommen.';
      break;
      case 'mission4' : setText = 'Dieses Zahnrad scheint die richtige Größe zu haben. Probier es gleich mal aus!';
      break;
      case 'mission5' : setText = 'Das Zahnrad passt perfekt und der Mahlstein bewegt sich auch wieder! Klasse das Kuchenfestival ist ge… Ach herrje… Das Mehl ist viel zu grobkörnig! Damit kann ja kein Bäcker etwas anfangen… Hmm das muss wohl an den Mahlsteinen liegen…';
      break;
      case 'mission6' : setText = 'Kein Wunder, die Mahlsteine sitzen ja auch total schief aufeinander… Sieh doch dort fehlt eine Stellschraube! Im Hammerwerk müssten noch ein paar rumliegen, geh doch mal hin und sie nach.';
      break;
      case 'mission7' : setText = 'Die Stellschraube liegt hinter den Fässern. Wir müssen sie beiseite schieben, damit wir hinkommen.';
      break;
      case 'mission7_1' : setText = 'Das ist die korrekte Stellschraube, ab zum Mahlstein!';
      break;
      case 'mission8' : setText = 'Super, jetzt liegt der Mahlstein wieder richtig und das Mehl wird fein gemahlen. Du hast es geschafft! Du hast die Mühle repariert und das Kuchenfestival gerettet!!!';
      break;
    }
  }


  if(languageSet == 'eng'){
    switch(textId) {

      case 'intro01' : setText = 'Today the big Cake Festival takes place in Lauf! But the bakers have run out of flour… Can you fix the old mill? Then we can make our own flour and save the Cake Festival!';
      break;
      case 'intro02' : setText = 'Over there is the Mill. The water wheel is turning, but the millstone is not moving. Take a look around, maybe you can figure out what the problem is.';
      break;
      case 'mission3' : setText = 'Ah, the gear wheel, that connects the water wheel to the mill, is missing here. Great, we have already found the problem! Now we just need a gear wheel… Maybe we can get a suitable spare part from one of the other buildings…';
      break;
      case 'mission3_1' : setText = 'The gear lies behind the barrels. We have to move them aside so that we can get to it.';
      break;
      case 'mission4' : setText = 'This gear seems to be the right size. Try it out right away!';
      break;
      case 'mission5' : setText = 'The gear fits perfectly and the millstone also moves again! Great, the Cake Festival is sa… Oh no… The Flour is much too coarse! No baker can do anything with it… Hmm that must be because of the grinding stones…';
      break;
      case 'mission6' : setText = 'The grinding stones sit totally crooked on top of each other… Look there is missing an adjusting screw! There should still be a few lying around in the Hammer Mill, go there and have a look.';
      break;
      case 'mission7' : setText = 'The adjusting screw lies behind the barrels. We have to move them aside so that we can get to it.';
      break;
      case 'mission7_1' : setText = 'This is the correct adjusting screw, lets go to the millstone!';
      break;
      case 'mission8' : setText = 'Great, now the millstone is right again and the flour is finely ground. You did it! You fixed the Mill and saved the Cake Festival!!!';
      break;
    }
  }



return setText;
}


}