import 'package:freezed_annotation/freezed_annotation.dart';

import '../weight/weight.dart';

part 'breed.g.dart';
part 'breed.freezed.dart';

@freezed
class Breed with _$Breed {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  factory Breed({
    required Weight weight,
    required String id,
    required String name,
    String? cfaUrl,
    String? vetstreetUrl,
    String? vcahospitalsUrl,
    required String temperament,
    required String origin,
    String? countryCodes,
    String? countryCode,
    String? description,
    required String lifeSpan,
    num? indoor,
    num? lap,
    String? altNames,
    num? adaptability,
    num? affectionLevel,
    num? childFriendly,
    num? dogFriendly,
    num? energyLevel,
    num? grooming,
    num? healthIssues,
    num? intelligence,
    num? sheddingLevel,
    num? socialNeeds,
    num? strangerFriendly,
    num? vocalisation,
    num? experimental,
    num? hairless,
    num? natural,
    num? rare,
    num? rex,
    num? suppressedTail,
    num? shortLegs,
    String? wikipediaUrl,
    num? hypoallergenic,
    String? referenceImageId,
  }) = _Breed;

  factory Breed.fromJson(Map<String, Object?> json) => _$BreedFromJson(json);
}
