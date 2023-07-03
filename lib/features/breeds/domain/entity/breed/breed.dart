
import 'package:freezed_annotation/freezed_annotation.dart';

import '../weight/weight.dart';

part 'breed.g.dart';
part 'breed.freezed.dart';

@freezed
class Breed with _$Breed {
  @JsonSerializable(fieldRename: FieldRename.snake,explicitToJson: true)
  factory Breed({
    required Weight weight,
    required String id,
    required String name,
    required String cfaUrl,
    required String vetstreetUrl,
    required String vcahospitalsUrl,
    required String temperament,
    required String origin,
    required String countryCodes,
    required String countryCode,
    required String description,
    required String lifeSpan,
    required num indoor,
    required num lap,
    required String altNames,
    required num adaptability,
    required num affectionLevel,
    required num childFriendly,
    required num dogFriendly,
    required num energyLevel,
    required num grooming,
    required num healthIssues,
    required num intelligence,
    required num sheddingLevel,
    required num socialNeeds,
    required num strangerFriendly,
    required num vocalisation,
    required num experimental,
    required num hairless,
    required num natural,
    required num rare,
    required num rex,
    required num suppressedTail,
    required num shortLegs,
    required String wikipediaUrl,
    required num hypoallergenic,
    required String referenceImageId,
}) = _Breed;
factory Breed.fromJson(Map<String, Object?> json) => _$BreedFromJson(json);
}


