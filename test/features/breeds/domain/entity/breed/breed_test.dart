import 'dart:convert';
import 'package:my_cat/features/breeds/domain/entity/breed/breed.dart';
import 'package:my_cat/features/breeds/domain/entity/weight/weight.dart';
import 'package:test/test.dart';
import '../../../../../core/converter_json.dart';


void main() {
  group("Breed model", () {
    test("Test 1 fromJson", () async {
      String response = await jsonConverter("assets/test/jsons/breed.json");
      final json = jsonDecode(response);
      final actual = Breed.fromJson(json);
      final matcher = Breed(
        weight: const Weight(imperial: "7  -  10", metric: "3 - 5"),
        id: "abys",
        name: "Abyssinian",
        cfaUrl: "http://cfa.org/Breeds/BreedsAB/Abyssinian.aspx",
        vetstreetUrl: "http://www.vetstreet.com/cats/abyssinian",
        vcahospitalsUrl:
        "https://vcahospitals.com/know-your-pet/cat-breeds/abyssinian",
        temperament: "Active, Energetic, Independent, Intelligent, Gentle",
        origin: "Egypt",
        countryCodes: "EG",
        countryCode: "EG",
        description:
        "The Abyssinian is easy to care for, and a joy to have in your home. They’re affectionate cats and love both people and other animals.",
        lifeSpan: "14 - 15",
        indoor: 0,
        lap: 1,
        altNames: "",
        adaptability: 5,
        affectionLevel: 5,
        childFriendly: 3,
        dogFriendly: 4,
        energyLevel: 5,
        grooming: 1,
        healthIssues: 2,
        intelligence: 5,
        sheddingLevel: 2,
        socialNeeds: 5,
        strangerFriendly: 5,
        vocalisation: 1,
        experimental: 0,
        hairless: 0,
        natural: 1,
        rare: 0,
        rex: 0,
        suppressedTail: 0,
        shortLegs: 0,
        wikipediaUrl: "https://en.wikipedia.org/wiki/Abyssinian_(cat)",
        hypoallergenic: 0,
        referenceImageId: "0XYvRd7oD",
      );
      expect(actual, matcher);
    });

    test("Test 2 toJson", () async {
      final breed = Breed(
        weight: const Weight(imperial: "7  -  10", metric: "3 - 5"),
        id: "abys",
        name: "Abyssinian",
        cfaUrl: "http://cfa.org/Breeds/BreedsAB/Abyssinian.aspx",
        vetstreetUrl: "http://www.vetstreet.com/cats/abyssinian",
        vcahospitalsUrl:
        "https://vcahospitals.com/know-your-pet/cat-breeds/abyssinian",
        temperament: "Active, Energetic, Independent, Intelligent, Gentle",
        origin: "Egypt",
        countryCodes: "EG",
        countryCode: "EG",
        description:
        "The Abyssinian is easy to care for, and a joy to have in your home. They’re affectionate cats and love both people and other animals.",
        lifeSpan: "14 - 15",
        indoor: 0,
        lap: 1,
        altNames: "",
        adaptability: 5,
        affectionLevel: 5,
        childFriendly: 3,
        dogFriendly: 4,
        energyLevel: 5,
        grooming: 1,
        healthIssues: 2,
        intelligence: 5,
        sheddingLevel: 2,
        socialNeeds: 5,
        strangerFriendly: 5,
        vocalisation: 1,
        experimental: 0,
        hairless: 0,
        natural: 1,
        rare: 0,
        rex: 0,
        suppressedTail: 0,
        shortLegs: 0,
        wikipediaUrl: "https://en.wikipedia.org/wiki/Abyssinian_(cat)",
        hypoallergenic: 0,
        referenceImageId: "0XYvRd7oD",
      );
      final actual = breed.toJson();
      String response = await jsonConverter("assets/test/jsons/breed.json");
      final matcher = jsonDecode(response);
      expect(actual, matcher);
    });
  });
}
