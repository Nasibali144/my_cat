import 'dart:convert';
import 'package:my_cat/features/images/domain/entity/image/image_model.dart';
import 'package:my_cat/features/votes/domain/entity/vote/vote.dart';
import 'package:test/test.dart';
import '../../../../../core/converter_json.dart';

void main() {
  group("Vote Model", () {
    test("Test 1. From Json", () async {
      String response = await jsonConverter("assets/test/jsons/vote.json");
      final json = jsonDecode(response);
      final actual = Vote.fromJson(json);

      const matcher = Vote(
        id: 1057830,
        value: 1,
        userId: "fw8m4q",
        imageId: "ol",
        subId: "my-user-1234",
        createdAt: "2023-06-26T04:27:22.000Z",
        countryCode: "US",
        image: PartImage(id: "ol", url: "https://cdn2.thecatapi.com/images/ol.jpg"),
      );

      expect(actual, matcher);
    });

    test("Test 2. To Json", () async {
      String response = await jsonConverter("assets/test/jsons/vote.json");
      const vote = Vote(
        id: 1057830,
        value: 1,
        userId: "fw8m4q",
        imageId: "ol",
        subId: "my-user-1234",
        createdAt: "2023-06-26T04:27:22.000Z",
        countryCode: "US",
        image: PartImage(id: "ol", url: "https://cdn2.thecatapi.com/images/ol.jpg"),
      );

      final actual = vote.toJson();

      final matcher = jsonDecode(response);

      expect(actual, matcher);
    });
  });
}
