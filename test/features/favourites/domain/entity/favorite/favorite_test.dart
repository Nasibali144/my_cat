import 'dart:convert';
import 'package:my_cat/features/favourites/domain/entity/favorite/favorite.dart';
import 'package:my_cat/features/images/domain/entity/image/image_model.dart';
import 'package:test/test.dart';
import '../../../../../core/converter_json.dart';


void main() {
  group("Favorite Model", () {

    test("Test 1. From Json", () async {
      String response = await jsonConverter("assets/test/jsons/favourite.json");
      final json = jsonDecode(response);
      final actual = Favorite.fromJson(json);

      const matcher =  Favorite(
        id: 232356990,
        userId: "fw8m4q",
        imageId: "9ccXTANkb",
        subId: "my-user-1234",
        createdAt: "2023-06-26T04:28:29.000Z",
        image: PartImage(id: '9ccXTANkb', url: 'https://cdn2.thecatapi.com/images/9ccXTANkb.jpg'),
      );

      expect(actual, matcher);
    });

    test("Test 2. To Json", () async {
      String response = await jsonConverter("assets/test/jsons/favourite.json");
      const favorite = Favorite(
        id: 232356990,
        userId: "fw8m4q",
        imageId: "9ccXTANkb",
        subId: "my-user-1234",
        createdAt: "2023-06-26T04:28:29.000Z",
        image: PartImage(id: '9ccXTANkb', url: 'https://cdn2.thecatapi.com/images/9ccXTANkb.jpg'),
      );

      final actual = favorite.toJson();

      final matcher = jsonDecode(response);

      expect(actual, matcher);
    });
  });
}