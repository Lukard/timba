import 'package:Timba/feature/privacy_policy/presentation/page/privacy_policy.dart';
import 'package:flutter/material.dart';

import 'package:Timba/feature/game/presentation/page/game.dart';

class Timba extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        Game.route: (context) => Game(),
        PrivacyPolicy.route: (context) => PrivacyPolicy()
      },
    );
  }
}
