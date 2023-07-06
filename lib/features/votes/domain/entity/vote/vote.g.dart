// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Vote _$$_VoteFromJson(Map<String, dynamic> json) => _$_Vote(
      id: json['id'] as int,
      value: json['value'] as int,
      userId: json['user_id'] as String?,
      imageId: json['image_id'] as String,
      subId: json['sub_id'] as String,
      createdAt: json['created_at'] as String,
      image: PartImage.fromJson(json['image'] as Map<String, dynamic>),
      countryCode: json['country_code'] as String?,
    );

Map<String, dynamic> _$$_VoteToJson(_$_Vote instance) => <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'user_id': instance.userId,
      'image_id': instance.imageId,
      'sub_id': instance.subId,
      'created_at': instance.createdAt,
      'image': instance.image.toJson(),
      'country_code': instance.countryCode,
    };
