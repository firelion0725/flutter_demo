// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TypeModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TypeModel _$TypeModelFromJson(Map<String, dynamic> json) {
  return TypeModel(
    json['id'] as String,
    json['coverImageUrl'] as String,
    json['desc'] as String,
    json['title'] as String,
    json['type'] as String,
  );
}

Map<String, dynamic> _$TypeModelToJson(TypeModel instance) => <String, dynamic>{
      'id': instance.id,
      'coverImageUrl': instance.coverImageUrl,
      'desc': instance.desc,
      'title': instance.title,
      'type': instance.type,
    };
