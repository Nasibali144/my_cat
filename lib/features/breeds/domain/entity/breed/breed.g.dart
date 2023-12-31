// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Breed _$$_BreedFromJson(Map<String, dynamic> json) => _$_Breed(
      weight: Weight.fromJson(json['weight'] as Map<String, dynamic>),
      id: json['id'] as String,
      name: json['name'] as String,
      cfaUrl: json['cfa_url'] as String?,
      vetstreetUrl: json['vetstreet_url'] as String?,
      vcahospitalsUrl: json['vcahospitals_url'] as String?,
      temperament: json['temperament'] as String,
      origin: json['origin'] as String,
      countryCodes: json['country_codes'] as String?,
      countryCode: json['country_code'] as String?,
      description: json['description'] as String?,
      lifeSpan: json['life_span'] as String,
      indoor: json['indoor'] as num?,
      lap: json['lap'] as num?,
      altNames: json['alt_names'] as String?,
      adaptability: json['adaptability'] as num?,
      affectionLevel: json['affection_level'] as num?,
      childFriendly: json['child_friendly'] as num?,
      dogFriendly: json['dog_friendly'] as num?,
      energyLevel: json['energy_level'] as num?,
      grooming: json['grooming'] as num?,
      healthIssues: json['health_issues'] as num?,
      intelligence: json['intelligence'] as num?,
      sheddingLevel: json['shedding_level'] as num?,
      socialNeeds: json['social_needs'] as num?,
      strangerFriendly: json['stranger_friendly'] as num?,
      vocalisation: json['vocalisation'] as num?,
      experimental: json['experimental'] as num?,
      hairless: json['hairless'] as num?,
      natural: json['natural'] as num?,
      rare: json['rare'] as num?,
      rex: json['rex'] as num?,
      suppressedTail: json['suppressed_tail'] as num?,
      shortLegs: json['short_legs'] as num?,
      wikipediaUrl: json['wikipedia_url'] as String?,
      hypoallergenic: json['hypoallergenic'] as num?,
      referenceImageId: json['reference_image_id'] as String?,
    );

Map<String, dynamic> _$$_BreedToJson(_$_Breed instance) => <String, dynamic>{
      'weight': instance.weight.toJson(),
      'id': instance.id,
      'name': instance.name,
      'cfa_url': instance.cfaUrl,
      'vetstreet_url': instance.vetstreetUrl,
      'vcahospitals_url': instance.vcahospitalsUrl,
      'temperament': instance.temperament,
      'origin': instance.origin,
      'country_codes': instance.countryCodes,
      'country_code': instance.countryCode,
      'description': instance.description,
      'life_span': instance.lifeSpan,
      'indoor': instance.indoor,
      'lap': instance.lap,
      'alt_names': instance.altNames,
      'adaptability': instance.adaptability,
      'affection_level': instance.affectionLevel,
      'child_friendly': instance.childFriendly,
      'dog_friendly': instance.dogFriendly,
      'energy_level': instance.energyLevel,
      'grooming': instance.grooming,
      'health_issues': instance.healthIssues,
      'intelligence': instance.intelligence,
      'shedding_level': instance.sheddingLevel,
      'social_needs': instance.socialNeeds,
      'stranger_friendly': instance.strangerFriendly,
      'vocalisation': instance.vocalisation,
      'experimental': instance.experimental,
      'hairless': instance.hairless,
      'natural': instance.natural,
      'rare': instance.rare,
      'rex': instance.rex,
      'suppressed_tail': instance.suppressedTail,
      'short_legs': instance.shortLegs,
      'wikipedia_url': instance.wikipediaUrl,
      'hypoallergenic': instance.hypoallergenic,
      'reference_image_id': instance.referenceImageId,
    };
