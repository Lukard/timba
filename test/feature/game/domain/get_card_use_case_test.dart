import 'package:Timba/feature/game/data/shirt_size_card_data_source.dart';
import 'package:Timba/feature/game/data/story_point_card_data_source.dart';
import 'package:Timba/feature/game/domain/card_params.dart';
import 'package:Timba/feature/game/domain/card_type.dart';
import 'package:Timba/feature/game/domain/get_card_use_case.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockStoryPointCardDataSource extends Mock
    implements StoryPointCardDataSource {}

class MockShirtSizeCardDataSource extends Mock
    implements ShirtSizeCardDataSource {}

void main() {
  StoryPointCardDataSource storyPointCardDataSource;
  ShirtSizeCardDataSource shirtSizeCardDataSource;

  GetCardUseCase getCardUseCase;

  setUp(() {
    storyPointCardDataSource = MockStoryPointCardDataSource();
    shirtSizeCardDataSource = MockShirtSizeCardDataSource();

    getCardUseCase =
        GetCardUseCase(storyPointCardDataSource, shirtSizeCardDataSource);
  });

  test('given StoryPoint CardParams when call then getStoryPoints is called',
      () {
    final params = CardParams(CardType.StoryPoint, 0);
    when(storyPointCardDataSource.getStoryPoint(any)).thenReturn("1");

    final result = getCardUseCase.call(params);

    expect(result, "1");
    verify(storyPointCardDataSource.getStoryPoint(0));
  });

  test('given ShirtSize CardParams when call then getShirtSize is called', () {
    final params = CardParams(CardType.ShirtSize, 1);
    when(shirtSizeCardDataSource.getShirtSize(any)).thenReturn("2");

    final result = getCardUseCase.call(params);
    
    expect(result, "2");
    verify(shirtSizeCardDataSource.getShirtSize(1));
  });
}
