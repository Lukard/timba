import 'package:Timba/privacy_policy.dart';
import 'package:flutter/material.dart';

import 'game_grid.dart';

class Game extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        GameGrid.route: (context) => GameGrid(),
        PrivacyPolicy.route: (context) => PrivacyPolicy()
      },
    );
  }
}
