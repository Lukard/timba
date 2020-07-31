import 'dart:async';

import 'package:Timba/game.dart';
import 'package:Timba/test/restart_for_testing.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Game());
}

void test(StreamController<int> streamController) async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(RestartWidget(
    child: Game(),
    streamController: streamController,
  ));
}
