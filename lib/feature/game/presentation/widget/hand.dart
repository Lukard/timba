import 'package:Timba/feature/game/presentation/widget/animated_grid.dart';
import 'package:Timba/feature/game/presentation/widget/fade_in_card.dart';
import 'package:flutter/material.dart';

class Hand extends StatelessWidget {
  final Function provideCard;

  Hand({this.provideCard});

  @override
  Widget build(BuildContext context) {
    return AnimatedGrid(
      child: Column(
        children: List.generate(
          4,
          (x) => Expanded(
            child: Row(
              children: List.generate(
                3,
                (y) => Expanded(
                  child: FadeInCard(
                    symbol: provideCard(x * 3 + y),
                    index: x * 3 + y,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
