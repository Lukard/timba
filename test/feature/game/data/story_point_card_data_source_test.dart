import 'package:Timba/feature/game/data/story_point_card_data_source.dart';
import 'package:test/test.dart';

void main() {
  StoryPointCardDataSource storyPointCardDataSource =
      StoryPointCardDataSource();

  test('given 0 index when getStoryPoint then "0" is returned', () {
    final result = storyPointCardDataSource.getStoryPoint(0);

    expect(result, "0");
  });

  test('given 1 index when getStoryPoint then "½" is returned', () {
    final result = storyPointCardDataSource.getStoryPoint(1);

    expect(result, "½");
  });

  test('given 2 index when getStoryPoint then "1" is returned', () {
    final result = storyPointCardDataSource.getStoryPoint(2);

    expect(result, "1");
  });

  test('given 3 index when getStoryPoint then "2" is returned', () {
    final result = storyPointCardDataSource.getStoryPoint(3);

    expect(result, "2");
  });

  test('given 4 index when getStoryPoint then "3" is returned', () {
    final result = storyPointCardDataSource.getStoryPoint(4);

    expect(result, "3");
  });

  test('given 5 index when getStoryPoint then "5" is returned', () {
    final result = storyPointCardDataSource.getStoryPoint(5);

    expect(result, "5");
  });

  test('given 6 index when getStoryPoint then "8" is returned', () {
    final result = storyPointCardDataSource.getStoryPoint(6);

    expect(result, "8");
  });

  test('given 7 index when getStoryPoint then "13" is returned', () {
    final result = storyPointCardDataSource.getStoryPoint(7);

    expect(result, "13");
  });

  test('given 8 index when getStoryPoint then "21" is returned', () {
    final result = storyPointCardDataSource.getStoryPoint(8);

    expect(result, "21");
  });

  test('given 9 index when getStoryPoint then "40" is returned', () {
    final result = storyPointCardDataSource.getStoryPoint(9);

    expect(result, "40");
  });

  test('given 10 index when getStoryPoint then "?" is returned', () {
    final result = storyPointCardDataSource.getStoryPoint(10);

    expect(result, "?");
  });

  test('given any other index when getStoryPoint then "☕️" is returned', () {
    final result = storyPointCardDataSource.getStoryPoint(11);

    expect(result, "☕️");
  });
}
