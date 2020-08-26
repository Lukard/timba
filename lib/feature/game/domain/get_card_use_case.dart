import 'package:Timba/core/domain/bullet_proof_usecase.dart';
import 'package:Timba/feature/game/data/shirt_size_card_data_source.dart';
import 'package:Timba/feature/game/data/story_point_card_data_source.dart';
import 'package:Timba/feature/game/domain/card_params.dart';
import 'package:Timba/feature/game/domain/card_type.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCardUseCase extends BulletProofUseCase<String, CardParams> {
  final StoryPointCardDataSource storyPointCardDataSource;
  final ShirtSizeCardDataSource shirtSizeCardDataSource;

  GetCardUseCase(this.storyPointCardDataSource, this.shirtSizeCardDataSource);

  @override
  String call(CardParams params) {
    if (params.cardType == CardType.StoryPoint) {
      return storyPointCardDataSource.getStoryPoint(params.index);
    } else {
      return shirtSizeCardDataSource.getShirtSize(params.index);
    }
  }
}
