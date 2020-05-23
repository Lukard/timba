import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';

class RestartWidget extends StatefulWidget {
  final Widget child;
  final StreamController<int> streamController;

  const RestartWidget({Key key, this.child, this.streamController}) : super(key: key);

  @override
  _RestartWidgetState createState() => _RestartWidgetState();
}

class _RestartWidgetState extends State<RestartWidget> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: widget.streamController.stream,
      initialData: 1,
      builder: (context, snapshot) {
        log(snapshot.data.toString());
        return KeyedSubtree(
          key: UniqueKey(),
          child: widget.child,
        );
      },
    );
  }
}
