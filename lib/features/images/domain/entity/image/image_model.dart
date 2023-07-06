import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_cat/features/breeds/domain/entity/breed/breed.dart';
import 'package:my_cat/features/images/domain/entity/category/category.dart';

part 'image_model.freezed.dart';
part 'image_model.g.dart';

@freezed
class FullImage with _$FullImage {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory FullImage({
    @Default(<Breed>[]) List<Breed> breeds,
    @Default(<Category>[]) List<Category> categories,
    required String id,
    required String url,
    required num width,
    required num height,
  }) = _FullImage;

  factory FullImage.fromJson(Map<String, Object?> json) =>
      _$FullImageFromJson(json);
}

@freezed
class PartImage with _$PartImage {
  const factory PartImage({
    required String id,
    required String url,
  }) = _PartImage;

  factory PartImage.fromJson(Map<String, Object?> json) =>
      _$PartImageFromJson(json);
}