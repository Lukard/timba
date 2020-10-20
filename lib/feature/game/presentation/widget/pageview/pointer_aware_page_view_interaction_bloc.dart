import 'package:Timba/feature/game/presentation/widget/pageview/pointer_aware_page_view_interaction_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PointerAwarePageViewInteractionBloc
    extends Bloc<PointerAwarePageViewInteractionEvent, bool> {
  PointerAwarePageViewInteractionBloc(bool initialState) : super(initialState);

  @override
  Stream<bool> mapEventToState(
      PointerAwarePageViewInteractionEvent event) async* {
    switch (event) {
      case PointerAwarePageViewInteractionEvent.startPointerScroll:
        yield false;
        break;
      case PointerAwarePageViewInteractionEvent.endPointerScroll:
        yield true;
        break;
    }
  }
}
