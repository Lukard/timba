import 'package:Timba/feature/game/presentation/widget/pageview/pointer_aware_page_view_interaction_bloc.dart';
import 'package:Timba/feature/game/presentation/widget/pageview/pointer_aware_page_view_interaction_event.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:test/test.dart';

void main() {
  PointerAwarePageViewInteractionBloc bloc;

  setUp(() {
    bloc = PointerAwarePageViewInteractionBloc(true);
  });

  test('when initial state then state is true', () {
    expect(bloc.state, true);
  });

  blocTest('when startPointerScroll event emitted then state is false',
      build: () => bloc,
      act: (bloc) =>
          bloc.add(PointerAwarePageViewInteractionEvent.startPointerScroll),
      expect: [false]);

  blocTest('when endPointerScroll event emitted then state is true',
      build: () => bloc,
      act: (bloc) =>
          bloc.add(PointerAwarePageViewInteractionEvent.endPointerScroll),
      expect: [true]);
}
