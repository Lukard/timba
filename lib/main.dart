import 'dart:async';

import 'package:Timba/core/test/restart_for_testing.dart';
import 'package:Timba/injection.dart';
import 'package:Timba/timba.dart';
import 'package:flutter/material.dart';

void main() {
  configureDependencies();
  runApp(Timba());
}

void test(StreamController<int> streamController) async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(RestartWidget(
    child: Timba(),
    streamController: streamController,
  ));
}
