import 'package:my_cat/core/utils/params/param.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_pagination_param.freezed.dart';

@freezed
class ImagePaginationParam extends Param with _$ImagePaginationParam {
  const factory ImagePaginationParam({
    required int page,
    required int limit,
  }) = _ImagePaginationParam;
}
