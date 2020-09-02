import 'package:Timba/feature/game/presentation/widget/grid_painter.dart';
import 'package:flutter/material.dart';

class AnimatedGrid extends StatefulWidget {
  final Widget child;

  const AnimatedGrid({Key key, this.child}) : super(key: key);

  @override
  _AnimatedGridState createState() => _AnimatedGridState();
}

class _AnimatedGridState extends State<AnimatedGrid>
    with TickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2000),
    );

    Tween<double> lineTween = Tween(begin: 0.0, end: 1.0);

    _animation = lineTween.animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animation,
        builder: (context, snapshot) {
          return CustomPaint(
            painter: GridPainter(
                rows: 4,
                columns: 3,
                color: Theme.of(context).dividerColor,
                progress: _animation.value),
            child: widget.child,
          );
        });
  }
}
