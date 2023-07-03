// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FullImage _$$FullImageFromJson(Map<String, dynamic> json) => _$FullImage(
      breeds: (json['breeds'] as List<dynamic>?)
              ?.map((e) => Breed.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Breed>[],
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Category>[],
      id: json['id'] as String,
      url: json['url'] as String,
      width: json['width'] as num,
      height: json['height'] as num,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FullImageToJson(_$FullImage instance) =>
    <String, dynamic>{
      'breeds': instance.breeds,
      'categories': instance.categories,
      'id': instance.id,
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
      'runtimeType': instance.$type,
    };

_$PartImage _$$PartImageFromJson(Map<String, dynamic> json) => _$PartImage(
      id: json['id'] as String,
      url: json['url'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PartImageToJson(_$PartImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'runtimeType': instance.$type,
    };
