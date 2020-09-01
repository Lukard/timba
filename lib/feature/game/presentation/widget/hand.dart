import 'package:Timba/feature/game/presentation/widget/card.dart' as PokerCard;
import 'package:flutter/material.dart';

class Hand extends StatelessWidget {
  final Function provideCard;

  Hand({this.provideCard});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        4,
        (x) => Expanded(
          child: Row(
            children: List.generate(
              3,
              (y) => Expanded(
                child: PokerCard.Card(
                  symbol: provideCard(x * 3 + y),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
