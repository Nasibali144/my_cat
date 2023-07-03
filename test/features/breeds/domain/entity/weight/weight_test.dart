import 'dart:convert';

import 'package:my_cat/features/breeds/domain/entity/weight/weight.dart';
import 'package:test/test.dart';
import '../../../../../core/converter_json.dart';

void main() {
  group("Weight model", () {
    test("Test 1. fromJson", () async {
      String response = await jsonConverter("assets/test/jsons/weight.json");
      final json = jsonDecode(response);
      final actual = Weight.fromJson(json);

      const matcher = Weight(imperial: "7  -  10", metric: "3 - 5");

      expect(actual, equals(matcher));
    });

    test("Test 2. toJson", () async {
      const weight = Weight(imperial: "7  -  10", metric: "3 - 5");
      final actual = weight.toJson();

      String response = await jsonConverter("assets/test/jsons/weight.json");
      final matcher = jsonDecode(response);

      expect(actual, equals(matcher));
    });
  });
}
