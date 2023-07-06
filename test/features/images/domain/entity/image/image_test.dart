import 'dart:convert';
import 'package:my_cat/features/images/domain/entity/category/category.dart';
import 'package:my_cat/features/images/domain/entity/image/image_model.dart';
import 'package:test/test.dart';
import '../../../../../core/converter_json.dart';

void main() {
  group("FullImage Model", () {
    test("Test 1. From Json", () async {
      String response = await jsonConverter("assets/test/jsons/image.json");
      final json = jsonDecode(response);
      final actual = FullImage.fromJson(json);

      const matcher = FullImage(
        categories: [
          Category(
            id: 5,
            name: "boxes",
          ),
        ],
        id: "ct",
        url: "https://cdn2.thecatapi.com/images/ct.jpg",
        width: 2992,
        height: 2992,
      );

      expect(actual, matcher);
    });

    test("Test 2. To Json", () async {
      String response = await jsonConverter("assets/test/jsons/image.json");
      const fullImage = FullImage(
        categories: [
          Category(
            id: 5,
            name: "boxes",
          ),
        ],
        id: "ct",
        url: "https://cdn2.thecatapi.com/images/ct.jpg",
        width: 2992,
        height: 2992,
      );

      final actual = fullImage.toJson();

      final matcher = jsonDecode(response);

      expect(actual, matcher);
    });
  });
}
