// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vote.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Vote _$VoteFromJson(Map<String, dynamic> json) {
  return _Vote.fromJson(json);
}

/// @nodoc
mixin _$Vote {
  int get id => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String get imageId => throw _privateConstructorUsedError;
  String get subId => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  PartImage get image => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VoteCopyWith<Vote> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoteCopyWith<$Res> {
  factory $VoteCopyWith(Vote value, $Res Function(Vote) then) =
      _$VoteCopyWithImpl<$Res, Vote>;
  @useResult
  $Res call(
      {int id,
      int value,
      String? userId,
      String imageId,
      String subId,
      String createdAt,
      PartImage image,
      String? countryCode});

  $PartImageCopyWith<$Res> get image;
}

/// @nodoc
class _$VoteCopyWithImpl<$Res, $Val extends Vote>
    implements $VoteCopyWith<$Res> {
  _$VoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? userId = freezed,
    Object? imageId = null,
    Object? subId = null,
    Object? createdAt = null,
    Object? image = null,
    Object? countryCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      imageId: null == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String,
      subId: null == subId
          ? _value.subId
          : subId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as PartImage,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PartImageCopyWith<$Res> get image {
    return $PartImageCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VoteCopyWith<$Res> implements $VoteCopyWith<$Res> {
  factory _$$_VoteCopyWith(_$_Vote value, $Res Function(_$_Vote) then) =
      __$$_VoteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int value,
      String? userId,
      String imageId,
      String subId,
      String createdAt,
      PartImage image,
      String? countryCode});

  @override
  $PartImageCopyWith<$Res> get image;
}

/// @nodoc
class __$$_VoteCopyWithImpl<$Res> extends _$VoteCopyWithImpl<$Res, _$_Vote>
    implements _$$_VoteCopyWith<$Res> {
  __$$_VoteCopyWithImpl(_$_Vote _value, $Res Function(_$_Vote) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? userId = freezed,
    Object? imageId = null,
    Object? subId = null,
    Object? createdAt = null,
    Object? image = null,
    Object? countryCode = freezed,
  }) {
    return _then(_$_Vote(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      imageId: null == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String,
      subId: null == subId
          ? _value.subId
          : subId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as PartImage,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_Vote implements _Vote {
  const _$_Vote(
      {required this.id,
      required this.value,
      this.userId,
      required this.imageId,
      required this.subId,
      required this.createdAt,
      required this.image,
      this.countryCode});

  factory _$_Vote.fromJson(Map<String, dynamic> json) => _$$_VoteFromJson(json);

  @override
  final int id;
  @override
  final int value;
  @override
  final String? userId;
  @override
  final String imageId;
  @override
  final String subId;
  @override
  final String createdAt;
  @override
  final PartImage image;
  @override
  final String? countryCode;

  @override
  String toString() {
    return 'Vote(id: $id, value: $value, userId: $userId, imageId: $imageId, subId: $subId, createdAt: $createdAt, image: $image, countryCode: $countryCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Vote &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.imageId, imageId) || other.imageId == imageId) &&
            (identical(other.subId, subId) || other.subId == subId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, value, userId, imageId,
      subId, createdAt, image, countryCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VoteCopyWith<_$_Vote> get copyWith =>
      __$$_VoteCopyWithImpl<_$_Vote>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VoteToJson(
      this,
    );
  }
}

abstract class _Vote implements Vote {
  const factory _Vote(
      {required final int id,
      required final int value,
      final String? userId,
      required final String imageId,
      required final String subId,
      required final String createdAt,
      required final PartImage image,
      final String? countryCode}) = _$_Vote;

  factory _Vote.fromJson(Map<String, dynamic> json) = _$_Vote.fromJson;

  @override
  int get id;
  @override
  int get value;
  @override
  String? get userId;
  @override
  String get imageId;
  @override
  String get subId;
  @override
  String get createdAt;
  @override
  PartImage get image;
  @override
  String? get countryCode;
  @override
  @JsonKey(ignore: true)
  _$$_VoteCopyWith<_$_Vote> get copyWith => throw _privateConstructorUsedError;
}
