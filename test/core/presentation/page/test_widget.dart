import 'package:Timba/injection.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  final Widget child;

  const Test({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    configureDependencies();
    return MaterialApp(
      home: child,
    );
  }
}
