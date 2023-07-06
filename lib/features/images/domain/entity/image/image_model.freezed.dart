// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FullImage _$FullImageFromJson(Map<String, dynamic> json) {
  return _FullImage.fromJson(json);
}

/// @nodoc
mixin _$FullImage {
  List<Breed> get breeds => throw _privateConstructorUsedError;
  List<Category> get categories => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  num get width => throw _privateConstructorUsedError;
  num get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FullImageCopyWith<FullImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FullImageCopyWith<$Res> {
  factory $FullImageCopyWith(FullImage value, $Res Function(FullImage) then) =
      _$FullImageCopyWithImpl<$Res, FullImage>;
  @useResult
  $Res call(
      {List<Breed> breeds,
      List<Category> categories,
      String id,
      String url,
      num width,
      num height});
}

/// @nodoc
class _$FullImageCopyWithImpl<$Res, $Val extends FullImage>
    implements $FullImageCopyWith<$Res> {
  _$FullImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breeds = null,
    Object? categories = null,
    Object? id = null,
    Object? url = null,
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_value.copyWith(
      breeds: null == breeds
          ? _value.breeds
          : breeds // ignore: cast_nullable_to_non_nullable
              as List<Breed>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as num,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FullImageCopyWith<$Res> implements $FullImageCopyWith<$Res> {
  factory _$$_FullImageCopyWith(
          _$_FullImage value, $Res Function(_$_FullImage) then) =
      __$$_FullImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Breed> breeds,
      List<Category> categories,
      String id,
      String url,
      num width,
      num height});
}

/// @nodoc
class __$$_FullImageCopyWithImpl<$Res>
    extends _$FullImageCopyWithImpl<$Res, _$_FullImage>
    implements _$$_FullImageCopyWith<$Res> {
  __$$_FullImageCopyWithImpl(
      _$_FullImage _value, $Res Function(_$_FullImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breeds = null,
    Object? categories = null,
    Object? id = null,
    Object? url = null,
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_$_FullImage(
      breeds: null == breeds
          ? _value._breeds
          : breeds // ignore: cast_nullable_to_non_nullable
              as List<Breed>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as num,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_FullImage implements _FullImage {
  const _$_FullImage(
      {final List<Breed> breeds = const <Breed>[],
      final List<Category> categories = const <Category>[],
      required this.id,
      required this.url,
      required this.width,
      required this.height})
      : _breeds = breeds,
        _categories = categories;

  factory _$_FullImage.fromJson(Map<String, dynamic> json) =>
      _$$_FullImageFromJson(json);

  final List<Breed> _breeds;
  @override
  @JsonKey()
  List<Breed> get breeds {
    if (_breeds is EqualUnmodifiableListView) return _breeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_breeds);
  }

  final List<Category> _categories;
  @override
  @JsonKey()
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  final String id;
  @override
  final String url;
  @override
  final num width;
  @override
  final num height;

  @override
  String toString() {
    return 'FullImage(breeds: $breeds, categories: $categories, id: $id, url: $url, width: $width, height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FullImage &&
            const DeepCollectionEquality().equals(other._breeds, _breeds) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_breeds),
      const DeepCollectionEquality().hash(_categories),
      id,
      url,
      width,
      height);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FullImageCopyWith<_$_FullImage> get copyWith =>
      __$$_FullImageCopyWithImpl<_$_FullImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FullImageToJson(
      this,
    );
  }
}

abstract class _FullImage implements FullImage {
  const factory _FullImage(
      {final List<Breed> breeds,
      final List<Category> categories,
      required final String id,
      required final String url,
      required final num width,
      required final num height}) = _$_FullImage;

  factory _FullImage.fromJson(Map<String, dynamic> json) =
      _$_FullImage.fromJson;

  @override
  List<Breed> get breeds;
  @override
  List<Category> get categories;
  @override
  String get id;
  @override
  String get url;
  @override
  num get width;
  @override
  num get height;
  @override
  @JsonKey(ignore: true)
  _$$_FullImageCopyWith<_$_FullImage> get copyWith =>
      throw _privateConstructorUsedError;
}

PartImage _$PartImageFromJson(Map<String, dynamic> json) {
  return _PartImage.fromJson(json);
}

/// @nodoc
mixin _$PartImage {
  String get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PartImageCopyWith<PartImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartImageCopyWith<$Res> {
  factory $PartImageCopyWith(PartImage value, $Res Function(PartImage) then) =
      _$PartImageCopyWithImpl<$Res, PartImage>;
  @useResult
  $Res call({String id, String url});
}

/// @nodoc
class _$PartImageCopyWithImpl<$Res, $Val extends PartImage>
    implements $PartImageCopyWith<$Res> {
  _$PartImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PartImageCopyWith<$Res> implements $PartImageCopyWith<$Res> {
  factory _$$_PartImageCopyWith(
          _$_PartImage value, $Res Function(_$_PartImage) then) =
      __$$_PartImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String url});
}

/// @nodoc
class __$$_PartImageCopyWithImpl<$Res>
    extends _$PartImageCopyWithImpl<$Res, _$_PartImage>
    implements _$$_PartImageCopyWith<$Res> {
  __$$_PartImageCopyWithImpl(
      _$_PartImage _value, $Res Function(_$_PartImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
  }) {
    return _then(_$_PartImage(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PartImage implements _PartImage {
  const _$_PartImage({required this.id, required this.url});

  factory _$_PartImage.fromJson(Map<String, dynamic> json) =>
      _$$_PartImageFromJson(json);

  @override
  final String id;
  @override
  final String url;

  @override
  String toString() {
    return 'PartImage(id: $id, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PartImage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PartImageCopyWith<_$_PartImage> get copyWith =>
      __$$_PartImageCopyWithImpl<_$_PartImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PartImageToJson(
      this,
    );
  }
}

abstract class _PartImage implements PartImage {
  const factory _PartImage(
      {required final String id, required final String url}) = _$_PartImage;

  factory _PartImage.fromJson(Map<String, dynamic> json) =
      _$_PartImage.fromJson;

  @override
  String get id;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_PartImageCopyWith<_$_PartImage> get copyWith =>
      throw _privateConstructorUsedError;
}
