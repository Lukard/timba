import 'dart:async';

import 'package:Timba/feature/game/presentation/widget/card.dart' as PokerCard;
import 'package:flutter/material.dart';

class FadeInCard extends StatefulWidget {
  final String symbol;
  final int index;

  const FadeInCard({Key key, this.symbol, this.index}) : super(key: key);

  @override
  _FadeInCardState createState() => _FadeInCardState();
}

class _FadeInCardState extends State<FadeInCard>
    with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _controller;
  Timer _timer;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    super.initState();

    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _timer = Timer(Duration(milliseconds: 800 + widget.index * 100), () {
      if (_controller != null) {
        _controller.forward();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller = null;
    _timer.cancel();
    _timer = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: PokerCard.Card(
        symbol: widget.symbol,
      ),
    );
  }
}
