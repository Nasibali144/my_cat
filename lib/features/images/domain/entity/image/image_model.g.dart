// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FullImage _$$_FullImageFromJson(Map<String, dynamic> json) => _$_FullImage(
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
    );

Map<String, dynamic> _$$_FullImageToJson(_$_FullImage instance) =>
    <String, dynamic>{
      'breeds': instance.breeds.map((e) => e.toJson()).toList(),
      'categories': instance.categories.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
    };

_$_PartImage _$$_PartImageFromJson(Map<String, dynamic> json) => _$_PartImage(
      id: json['id'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_PartImageToJson(_$_PartImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
    };
