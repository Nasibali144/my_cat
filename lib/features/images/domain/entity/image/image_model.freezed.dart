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

ImageModel _$ImageModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'full':
      return FullImage.fromJson(json);
    case 'few':
      return PartImage.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ImageModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ImageModel {
  String get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Breed> breeds, List<Category> categories,
            String id, String url, num width, num height)
        full,
    required TResult Function(String id, String url) few,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Breed> breeds, List<Category> categories, String id,
            String url, num width, num height)?
        full,
    TResult? Function(String id, String url)? few,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Breed> breeds, List<Category> categories, String id,
            String url, num width, num height)?
        full,
    TResult Function(String id, String url)? few,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FullImage value) full,
    required TResult Function(PartImage value) few,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FullImage value)? full,
    TResult? Function(PartImage value)? few,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FullImage value)? full,
    TResult Function(PartImage value)? few,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageModelCopyWith<ImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageModelCopyWith<$Res> {
  factory $ImageModelCopyWith(
          ImageModel value, $Res Function(ImageModel) then) =
      _$ImageModelCopyWithImpl<$Res, ImageModel>;
  @useResult
  $Res call({String id, String url});
}

/// @nodoc
class _$ImageModelCopyWithImpl<$Res, $Val extends ImageModel>
    implements $ImageModelCopyWith<$Res> {
  _$ImageModelCopyWithImpl(this._value, this._then);

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
abstract class _$$FullImageCopyWith<$Res> implements $ImageModelCopyWith<$Res> {
  factory _$$FullImageCopyWith(
          _$FullImage value, $Res Function(_$FullImage) then) =
      __$$FullImageCopyWithImpl<$Res>;
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
class __$$FullImageCopyWithImpl<$Res>
    extends _$ImageModelCopyWithImpl<$Res, _$FullImage>
    implements _$$FullImageCopyWith<$Res> {
  __$$FullImageCopyWithImpl(
      _$FullImage _value, $Res Function(_$FullImage) _then)
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
    return _then(_$FullImage(
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
@JsonSerializable()
class _$FullImage implements FullImage {
  const _$FullImage(
      {final List<Breed> breeds = const <Breed>[],
      final List<Category> categories = const <Category>[],
      required this.id,
      required this.url,
      required this.width,
      required this.height,
      final String? $type})
      : _breeds = breeds,
        _categories = categories,
        $type = $type ?? 'full';

  factory _$FullImage.fromJson(Map<String, dynamic> json) =>
      _$$FullImageFromJson(json);

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

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ImageModel.full(breeds: $breeds, categories: $categories, id: $id, url: $url, width: $width, height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FullImage &&
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
  _$$FullImageCopyWith<_$FullImage> get copyWith =>
      __$$FullImageCopyWithImpl<_$FullImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Breed> breeds, List<Category> categories,
            String id, String url, num width, num height)
        full,
    required TResult Function(String id, String url) few,
  }) {
    return full(breeds, categories, id, url, width, height);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Breed> breeds, List<Category> categories, String id,
            String url, num width, num height)?
        full,
    TResult? Function(String id, String url)? few,
  }) {
    return full?.call(breeds, categories, id, url, width, height);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Breed> breeds, List<Category> categories, String id,
            String url, num width, num height)?
        full,
    TResult Function(String id, String url)? few,
    required TResult orElse(),
  }) {
    if (full != null) {
      return full(breeds, categories, id, url, width, height);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FullImage value) full,
    required TResult Function(PartImage value) few,
  }) {
    return full(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FullImage value)? full,
    TResult? Function(PartImage value)? few,
  }) {
    return full?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FullImage value)? full,
    TResult Function(PartImage value)? few,
    required TResult orElse(),
  }) {
    if (full != null) {
      return full(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FullImageToJson(
      this,
    );
  }
}

abstract class FullImage implements ImageModel {
  const factory FullImage(
      {final List<Breed> breeds,
      final List<Category> categories,
      required final String id,
      required final String url,
      required final num width,
      required final num height}) = _$FullImage;

  factory FullImage.fromJson(Map<String, dynamic> json) = _$FullImage.fromJson;

  List<Breed> get breeds;
  List<Category> get categories;
  @override
  String get id;
  @override
  String get url;
  num get width;
  num get height;
  @override
  @JsonKey(ignore: true)
  _$$FullImageCopyWith<_$FullImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PartImageCopyWith<$Res> implements $ImageModelCopyWith<$Res> {
  factory _$$PartImageCopyWith(
          _$PartImage value, $Res Function(_$PartImage) then) =
      __$$PartImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String url});
}

/// @nodoc
class __$$PartImageCopyWithImpl<$Res>
    extends _$ImageModelCopyWithImpl<$Res, _$PartImage>
    implements _$$PartImageCopyWith<$Res> {
  __$$PartImageCopyWithImpl(
      _$PartImage _value, $Res Function(_$PartImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
  }) {
    return _then(_$PartImage(
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
class _$PartImage implements PartImage {
  const _$PartImage({required this.id, required this.url, final String? $type})
      : $type = $type ?? 'few';

  factory _$PartImage.fromJson(Map<String, dynamic> json) =>
      _$$PartImageFromJson(json);

  @override
  final String id;
  @override
  final String url;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ImageModel.few(id: $id, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartImage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PartImageCopyWith<_$PartImage> get copyWith =>
      __$$PartImageCopyWithImpl<_$PartImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Breed> breeds, List<Category> categories,
            String id, String url, num width, num height)
        full,
    required TResult Function(String id, String url) few,
  }) {
    return few(id, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Breed> breeds, List<Category> categories, String id,
            String url, num width, num height)?
        full,
    TResult? Function(String id, String url)? few,
  }) {
    return few?.call(id, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Breed> breeds, List<Category> categories, String id,
            String url, num width, num height)?
        full,
    TResult Function(String id, String url)? few,
    required TResult orElse(),
  }) {
    if (few != null) {
      return few(id, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FullImage value) full,
    required TResult Function(PartImage value) few,
  }) {
    return few(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FullImage value)? full,
    TResult? Function(PartImage value)? few,
  }) {
    return few?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FullImage value)? full,
    TResult Function(PartImage value)? few,
    required TResult orElse(),
  }) {
    if (few != null) {
      return few(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PartImageToJson(
      this,
    );
  }
}

abstract class PartImage implements ImageModel {
  const factory PartImage(
      {required final String id, required final String url}) = _$PartImage;

  factory PartImage.fromJson(Map<String, dynamic> json) = _$PartImage.fromJson;

  @override
  String get id;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$PartImageCopyWith<_$PartImage> get copyWith =>
      throw _privateConstructorUsedError;
}
