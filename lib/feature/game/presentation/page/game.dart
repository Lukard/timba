import 'package:Timba/feature/game/domain/card_params.dart';
import 'package:Timba/feature/game/domain/card_type.dart';
import 'package:Timba/feature/game/domain/get_card_use_case.dart';
import 'package:Timba/feature/game/presentation/widget/hand.dart';
import 'package:Timba/feature/game/presentation/widget/pageview/pointer_aware_page_view.dart';
import 'package:Timba/injection.dart';
import 'package:flutter/material.dart';

class Game extends StatelessWidget {
  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: PointerAwarePageView(
          key: Key("pageview"),
          children: [
            Hand(provideCard: getStoryPoint),
            Hand(provideCard: getShirtSize),
          ],
        ),
      ),
    );
  }
}

String getStoryPoint(int index) {
  return getIt<GetCardUseCase>().call(CardParams(CardType.StoryPoint, index));
}

String getShirtSize(int index) {
  return getIt<GetCardUseCase>().call(CardParams(CardType.ShirtSize, index));
}
