import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_cat/features/images/domain/entity/image/image_model.dart';

part 'favorite.freezed.dart';
part 'favorite.g.dart';

@freezed
class Favorite with _$Favorite {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Favorite({
    required int id,
    required String userId,
    required String imageId,
    required String subId,
    required String createdAt,
    required PartImage image,
}) = _Favorite;

  factory Favorite.fromJson(Map<String, Object?> json) => _$FavoriteFromJson(json);
}