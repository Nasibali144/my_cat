import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_cat/features/images/domain/entity/image/image_model.dart';

part 'vote.freezed.dart';
part 'vote.g.dart';

// @freezed
// class ImageVote with _$ImageVote {
//   const factory ImageVote({
//     required String id,
//     required String url,
//   }) = _ImageVote;
//
//   factory ImageVote.fromJson(Map<String, Object?> json) => _$ImageVoteFromJson(json);
// }

@freezed
class Vote with _$Vote {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Vote({
    required int id,
    required String userId,
    required String imageId,
    required String subId,
    required String createdAt,
    required PartImage image,
    String? countryCode,
  }) = _Vote;

  factory Vote.fromJson(Map<String, Object?> json) => _$VoteFromJson(json);
}