import 'dart:async';
import 'dart:math';

import 'package:Timba/feature/game/presentation/widget/pageview/pointer_aware_page_view_interaction_bloc.dart';
import 'package:Timba/feature/game/presentation/widget/pageview/pointer_aware_page_view_interaction_event.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PointerAwarePageView extends StatelessWidget {
  final List<Widget> children;

  const PointerAwarePageView({Key key, this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(viewportFraction: 1);
    return BlocProvider<PointerAwarePageViewInteractionBloc>(
      create: (context) => PointerAwarePageViewInteractionBloc(true),
      child: BlocBuilder<PointerAwarePageViewInteractionBloc, bool>(
        builder: (context, physicsEnabled) {
          // ignore: close_sinks
          final PointerAwarePageViewInteractionBloc bloc =
              BlocProvider.of<PointerAwarePageViewInteractionBloc>(context);

          return Listener(
            onPointerSignal: (pointerSignal) {
              if (pointerSignal is PointerScrollEvent) {
                bloc.add(
                    PointerAwarePageViewInteractionEvent.startPointerScroll);
                Future(() {
                  Future.delayed(Duration(milliseconds: 400), () {
                    bloc.add(
                        PointerAwarePageViewInteractionEvent.endPointerScroll);
                  });
                  final currentPage = controller.page.round();
                  final nextPage = pointerSignal.scrollDelta.dy >= 0.0
                      ? min(currentPage + 1, children.length - 1)
                      : max(0, currentPage - 1);
                  controller.animateToPage(
                    nextPage,
                    duration: Duration(milliseconds: 400),
                    curve: Curves.decelerate,
                  );
                });
              }
            },
            child: PageView(
              physics: physicsEnabled
                  ? ScrollPhysics()
                  : NeverScrollableScrollPhysics(),
              controller: controller,
              scrollDirection: Axis.vertical,
              children: children,
            ),
          );
        },
      ),
    );
  }
}
