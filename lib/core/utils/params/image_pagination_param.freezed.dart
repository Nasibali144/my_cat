// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_pagination_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ImagePaginationParam {
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImagePaginationParamCopyWith<ImagePaginationParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagePaginationParamCopyWith<$Res> {
  factory $ImagePaginationParamCopyWith(ImagePaginationParam value,
          $Res Function(ImagePaginationParam) then) =
      _$ImagePaginationParamCopyWithImpl<$Res, ImagePaginationParam>;
  @useResult
  $Res call({int page, int limit});
}

/// @nodoc
class _$ImagePaginationParamCopyWithImpl<$Res,
        $Val extends ImagePaginationParam>
    implements $ImagePaginationParamCopyWith<$Res> {
  _$ImagePaginationParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImagePaginationParamCopyWith<$Res>
    implements $ImagePaginationParamCopyWith<$Res> {
  factory _$$_ImagePaginationParamCopyWith(_$_ImagePaginationParam value,
          $Res Function(_$_ImagePaginationParam) then) =
      __$$_ImagePaginationParamCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, int limit});
}

/// @nodoc
class __$$_ImagePaginationParamCopyWithImpl<$Res>
    extends _$ImagePaginationParamCopyWithImpl<$Res, _$_ImagePaginationParam>
    implements _$$_ImagePaginationParamCopyWith<$Res> {
  __$$_ImagePaginationParamCopyWithImpl(_$_ImagePaginationParam _value,
      $Res Function(_$_ImagePaginationParam) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(_$_ImagePaginationParam(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ImagePaginationParam implements _ImagePaginationParam {
  const _$_ImagePaginationParam({required this.page, required this.limit});

  @override
  final int page;
  @override
  final int limit;

  @override
  String toString() {
    return 'ImagePaginationParam(page: $page, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImagePaginationParam &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImagePaginationParamCopyWith<_$_ImagePaginationParam> get copyWith =>
      __$$_ImagePaginationParamCopyWithImpl<_$_ImagePaginationParam>(
          this, _$identity);
}

abstract class _ImagePaginationParam implements ImagePaginationParam {
  const factory _ImagePaginationParam(
      {required final int page,
      required final int limit}) = _$_ImagePaginationParam;

  @override
  int get page;
  @override
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$$_ImagePaginationParamCopyWith<_$_ImagePaginationParam> get copyWith =>
      throw _privateConstructorUsedError;
}
