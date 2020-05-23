import 'dart:async';
import 'dart:developer';

import 'package:flutter_driver/driver_extension.dart';
import 'package:Timba/main.dart' as app;

void main() {
  StreamController<int> streamController = new StreamController();
  enableFlutterDriverExtension(
    handler: (message) {
      log(message);
      streamController.add(2);
      return Future.value();
    },
  );
  app.test(streamController);
}
