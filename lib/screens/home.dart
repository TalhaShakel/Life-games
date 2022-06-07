import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ludo/main.dart';
import 'package:provider/provider.dart';

import '../gameengine/model/dice_model.dart';
import '../gameengine/model/game_state.dart';

class home_page extends StatelessWidget {
  const home_page({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(MultiProvider(providers: [
                      ChangeNotifierProvider(create: (context) => GameState()),
                      ChangeNotifierProvider(create: (context) => DiceModel()),
                    ], child: MyHomePage()));
                  },
                  child: Text("Ludo")),
            )
          ],
        ),
      ),
    );
  }
}
