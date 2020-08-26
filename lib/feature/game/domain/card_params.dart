import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'card_type.dart';

part 'card_params.freezed.dart';

@freezed
abstract class CardParams with _$CardParams {
  const factory CardParams(CardType cardType, int index) = _CardParams;
}
