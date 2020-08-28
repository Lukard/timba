import 'package:injectable/injectable.dart';

@injectable
class ShirtSizeCardDataSource {
  String getShirtSize(int index) {
    switch (index) {
      case 0:
        return "0";
      case 1:
        return "XS";
      case 2:
        return "S";
      case 3:
        return "M";
      case 4:
        return "L";
      case 5:
        return "XL";
      case 6:
        return "2XL";
      case 7:
        return "3XL";
      case 8:
        return "4XL";
      case 9:
        return "5XL";
      case 10:
        return "?";
      default:
        return "☕️";
    }
  }
}
