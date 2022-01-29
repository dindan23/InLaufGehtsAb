import 'package:bonfire/bonfire.dart';
import 'package:bonfire/decoration/decoration.dart';
import 'package:example/shared/util/common_sprite_sheet.dart';
import 'package:example/simple_example/simple_example_game.dart';
import 'package:example/simple_example/text.dart';
import 'package:flutter/material.dart';
import 'package:example/simple_example/sounds.dart';
import 'package:flame_audio/flame_audio.dart';

bool missionSet02 = false;
bool missionSet03 = false;
bool missionSet03_1 = false;
bool missionSet04 = false;
bool missionSet05 = false;
bool missionSet06 = false;
bool missionSet07 = false;
bool missionSet07_1 = false;
bool missionSet08 = false;
bool mahlsteinSetAnim = false;

class Mission_01 extends GameDecoration {



  bool _showConversation = false;
  Mission_01(
      Vector2 position,
      ) : super.withAnimation(
      animation: CommonSpriteSheet.infoAnimated,
      position: position,
      size: Vector2(16,16)
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

    Sounds.TextOpen();
    TalkDialog.show(gameRef.context, [
      Say(

        text: [
          TextSpan(text: Texter().getText('intro01')),
        ],

      ),

    ], onChangeTalk: (index) {
      //Sounds.interaction();
    }, onFinish: () {
      missionSet02 = true;
      this.animation = null;


    });
  }
}


class Mission_02 extends GameDecoration {

  bool _showConversation = false;
  Mission_02(
      Vector2 position,
      ) : super.withAnimation(
      animation: CommonSpriteSheet.infoAnimated,
      position: position,
      size: Vector2(16,16)
  );

  @override
  void update(double dt) {
    super.update(dt);
    if (gameRef.player != null) {
      this.seeComponent(
        gameRef.player!,
        observed: (player) {
          if (!_showConversation && missionSet02==true) {
            _showConversation = true;
            _showIntroduction();
          }
        },
        radiusVision: (2 * 16),
      );
    }
  }

  void _showIntroduction()  {
    Sounds.TextOpen();

    TalkDialog.show(gameRef.context, [
      Say(

        text: [
          TextSpan(text: Texter().getText('intro02')),
        ],

      ),

    ], onChangeTalk: (index) {
      //Sounds.interaction();
    }, onFinish: () {
      missionSet03 = true;
      this.animation = null;
      //Sounds.interaction();
    });
  }
}

class Mission_03_1 extends GameDecoration {

  bool _showConversation = false;
  Mission_03_1(
      Vector2 position,
      ) : super.withAnimation(
      animation: CommonSpriteSheet.infoAnimated,
      position: position,
      size: Vector2(16,16)
  );

  @override
  void update(double dt) {
    super.update(dt);
    if (gameRef.player != null) {
      this.seeComponent(
        gameRef.player!,
        observed: (player) {
          if (!_showConversation && missionSet03_1==true) {
            _showConversation = true;
            _showIntroduction();
          }
        },
        radiusVision: (2 * 16),
      );
    }
  }

  void _showIntroduction()  {
    Sounds.TextOpen();

    TalkDialog.show(gameRef.context, [
      Say(

        text: [
          TextSpan(text: Texter().getText('mission3_1')),
        ],

      ),

    ], onChangeTalk: (index) {
      //Sounds.interaction();
    }, onFinish: () {
      missionSet04 = true;
      this.animation = null;
      //Sounds.interaction();
    });
  }
}

class Mission_03 extends GameDecoration {

  bool _showConversation = false;
  Mission_03(
      Vector2 position,
      ) : super.withAnimation(
      animation: CommonSpriteSheet.infoAnimated,
      position: position,
      size: Vector2(16,16)
  );

  @override
  void update(double dt) {
    super.update(dt);
    if (gameRef.player != null) {
      this.seeComponent(
        gameRef.player!,
        observed: (player) {
          if (!_showConversation && missionSet03==true) {
            _showConversation = true;
            _showIntroduction();
          }
        },
        radiusVision: (2 * 16),
      );
    }
  }

  void _showIntroduction()  {
    Sounds.TextOpen();

    TalkDialog.show(gameRef.context, [
      Say(

        text: [
          TextSpan(text: Texter().getText('mission3')),
        ],

      ),

    ], onChangeTalk: (index) {
      //Sounds.interaction();
    }, onFinish: () {
      missionSet03_1 = true;
      this.animation = null;
      //Sounds.interaction();

    });
  }
}

class Mission_04 extends GameDecoration {

  bool _showConversation = false;
  Mission_04(
      Vector2 position,
      ) : super.withAnimation(
      animation: CommonSpriteSheet.infoAnimated,
      position: position,
      size: Vector2(16,16)
  );

  @override
  void update(double dt) {
    super.update(dt);
    if (gameRef.player != null) {
      this.seeComponent(
        gameRef.player!,
        observed: (player) {
          if (!_showConversation && missionSet04==true) {
            _showConversation = true;
            _showIntroduction();
          }
        },
        radiusVision: (2 * 16),
      );
    }
  }

  void _showIntroduction()  {
    Sounds.PickUp();
    TalkDialog.show(gameRef.context, [
      Say(

        text: [
          TextSpan(text: Texter().getText('mission4')),
        ],

      ),

    ], onChangeTalk: (index) {
      //Sounds.interaction();
    }, onFinish: () {
      missionSet05 = true;
      this.animation = null;
      //Sounds.interaction();

    });
  }
}

class Mission_05 extends GameDecoration {

  bool _showConversation = false;
  Mission_05(
      Vector2 position,
      ) : super.withAnimation(
      animation: CommonSpriteSheet.infoAnimated,
      position: position,
      size: Vector2(16,16)
  );

  @override
  void update(double dt) {
    super.update(dt);
    if (gameRef.player != null) {
      this.seeComponent(
        gameRef.player!,
        observed: (player) {
          if (!_showConversation && missionSet05==true) {
            _showConversation = true;
            _showIntroduction();
          }
        },
        radiusVision: (2 * 16),
      );
    }
  }

  void _showIntroduction()  {
    Sounds.TextOpen();
    TalkDialog.show(gameRef.context, [
      Say(

        text: [
          TextSpan(text: Texter().getText('mission5')),
        ],

      ),

    ], onChangeTalk: (index) {
      //Sounds.interaction();
    }, onFinish: () {
      missionSet06 = true;
      this.animation = null;
      mahlsteinSetAnim = true;
      Sounds.MahlsteinAudio();
      //Sounds.interaction();

    });
  }
}

class Mission_06 extends GameDecoration {

  bool _showConversation = false;
  Mission_06(
      Vector2 position,
      ) : super.withAnimation(
      animation: CommonSpriteSheet.infoAnimated,
      position: position,
      size: Vector2(16,16)
  );

  @override
  void update(double dt) {
    super.update(dt);
    if (gameRef.player != null) {
      this.seeComponent(
        gameRef.player!,
        observed: (player) {
          if (!_showConversation && missionSet06==true) {
            _showConversation = true;
            _showIntroduction();
          }
        },
        radiusVision: (2 * 16),
      );
    }
  }

  void _showIntroduction()  {
    Sounds.TextOpen();
    TalkDialog.show(gameRef.context, [
      Say(

        text: [
          TextSpan(text: Texter().getText('mission6')),
        ],

      ),

    ], onChangeTalk: (index) {
      //Sounds.interaction();
    }, onFinish: () {
      missionSet07 = true;
      this.animation = null;
      //Sounds.interaction();

    });
  }
}

class Mission_07 extends GameDecoration {

  bool _showConversation = false;
  Mission_07(
      Vector2 position,
      ) : super.withAnimation(
      animation: CommonSpriteSheet.infoAnimated,
      position: position,
      size: Vector2(16,16)
  );

  @override
  void update(double dt) {
    super.update(dt);
    if (gameRef.player != null) {
      this.seeComponent(
        gameRef.player!,
        observed: (player) {
          if (!_showConversation && missionSet07==true) {
            _showConversation = true;
            _showIntroduction();
          }
        },
        radiusVision: (2 * 16),
      );
    }
  }

  void _showIntroduction()  {
    Sounds.TextOpen();
    TalkDialog.show(gameRef.context, [
      Say(

        text: [
          TextSpan(text: Texter().getText('mission7')),
        ],

      ),

    ], onChangeTalk: (index) {
      //Sounds.interaction();
    }, onFinish: () {
      missionSet07_1 = true;
      this.animation = null;
      //Sounds.interaction();

    });
  }
}

class Mission_07_1 extends GameDecoration {

  bool _showConversation = false;
  Mission_07_1(
      Vector2 position,
      ) : super.withAnimation(
    animation: CommonSpriteSheet.infoAnimated,
    position: position,
    size: Vector2(16,16),

  );

  @override
  void update(double dt) {
    super.update(dt);
    if (gameRef.player != null) {
      this.seeComponent(
        gameRef.player!,
        observed: (player) {
          if (!_showConversation && missionSet07_1==true) {
            _showConversation = true;
            _showIntroduction();
          }
        },
        radiusVision: (2 * 16),
      );
    }
  }

  void _showIntroduction()  {
    Sounds.PickUp();
    TalkDialog.show(gameRef.context, [
      Say(

        text: [
          TextSpan(text: Texter().getText('mission7_1')),
        ],

      ),

    ], onChangeTalk: (index) {
      //Sounds.interaction();
    }, onFinish: () {
      this.animation = null;
      missionSet08 = true;
      //Sounds.interaction();

    });
  }
}

class Mission_08 extends GameDecoration {

  bool _showConversation = false;
  Mission_08(
      Vector2 position,
      ) : super.withAnimation(
      animation: CommonSpriteSheet.mahlsteinAnimated,
      position: position,
      size: Vector2(16*5,16*5),

  );

  @override
  void update(double dt) {
    super.update(dt);
    if (gameRef.player != null) {
      this.seeComponent(
        gameRef.player!,
        observed: (player) {
          if (!_showConversation && missionSet08==true) {
            _showConversation = true;
            _showIntroduction();
          }
        },
        radiusVision: (3 * 16),
      );
    }
  }

  void _showIntroduction()  {
    Sounds.TextOpen();
    TalkDialog.show(gameRef.context, [
      Say(

        text: [
          TextSpan(text: Texter().getText('mission8')),
        ],

      ),

    ], onChangeTalk: (index) {
      //Sounds.interaction();
    }, onFinish: () {

      //Sounds.interaction();

    });
  }
}


class Mission_08_End extends GameDecoration {

  bool _showConversation = false;
  Mission_08_End(
      Vector2 position,
      ) : super.withAnimation(
    animation: CommonSpriteSheet.mahlsteinSingle,
    position: position,
    size: Vector2(16*5.1,16*5.1),
    );

  @override
  void update(double dt) {
    super.update(dt);
    if(mahlsteinSetAnim == true){
      this.animation = null;
    }
  }


}




