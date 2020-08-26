import 'package:injectable/injectable.dart';

@injectable
class StoryPointCardDataSource {
  String getStoryPoint(int index) {
    switch (index) {
      case 0:
        return "0";
      case 1:
        return "½";
      case 2:
        return "1";
      case 3:
        return "2";
      case 4:
        return "3";
      case 5:
        return "5";
      case 6:
        return "8";
      case 7:
        return "13";
      case 8:
        return "21";
      case 9:
        return "40";
      case 10:
        return "?";
      default:
        return "☕️";
    }
  }
}
