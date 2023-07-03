import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_cat/features/breeds/domain/entity/breed/breed.dart';
import 'package:my_cat/features/images/domain/entity/category/category.dart';

part 'image_model.freezed.dart';
part 'image_model.g.dart';

@freezed
sealed class ImageModel with _$ImageModel {
  const factory ImageModel.full({
    @Default(<Breed>[]) List<Breed> breeds,
    @Default(<Category>[]) List<Category> categories,
    required String id,
    required String url,
    required num width,
    required num height,
  }) = FullImage;

  const factory ImageModel.few({
    required String id,
    required String url,
  }) = PartImage;

  factory ImageModel.fromJson(Map<String, Object?> json) =>
      _$ImageModelFromJson(json);
}
